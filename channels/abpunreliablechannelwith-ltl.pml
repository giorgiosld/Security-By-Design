
/* Channels */

mtype = {timer_on, timer_off, tout};

chan e = [0] of {mtype};

chan f = [0] of {mtype};

chan c = [5] of {bool};

chan d = [5] of {bool};

active proctype Sender() {
  bool altbit = 0;
  bool x;
  do
       :: skip; /* To create a state in which the sender does not want to send messages */
       trytosend:
       if
          :: /* lost */ skip  
          :: c!altbit 
       fi;
       e!timer_on;
       wait:
       if 
          :: f?tout -> goto trytosend /* go back to resend the message */
          :: d?x -> ackreceived: if
			           :: (x != altbit)  -> goto wait /* received bit is wrong, ignored */
			           :: (x == altbit) -> /* aknowledgemnt received */
                  					  e!timer_off; 
						  altbit = !altbit /* go back to main loop */
			        fi
       fi
  od 
}

active proctype Receiver() {
  bool altbit = 0;
  bool y; 
  do
    :: c?y; 
       if
         :: (y != altbit) /* ignored, go back to loop */
         :: (y == altbit) -> d!altbit; /* send acknowledgement */
                                      altbit = !altbit /* go back to loop */
       fi 
  od
}

active proctype Timer() {
timeroff:
  do     
    :: e?timer_on -> timeron: if 
                                                 :: e?timer_off /* go back to the beginning of the loop */
			           :: f!tout /* go back to the beginning of the loop */
                                              fi
  od 
}

/* Liveness: The sender tries to send infinitely many times - TRUE*/
ltl p1 {[](<> (Sender@trytosend))}

/* Liveness: The sender receives an ack infinitely many times - FALSE if no WEAK FAIRNESS is imposed, otherwise true*/
ltl p2 {[]<> (Sender@ackreceived)}

/* Safety: Whenever the sender is waiting for an acknowledgement the Timer is off  - FALSE*/
ltl p3 {[] (Sender@wait -> Timer@timeroff)}

/* Safety: Whenver the sender is waiting for an ack the timer is on - TRUE */
ltl p4 {[] (Sender@wait -> Timer@timeron)}
