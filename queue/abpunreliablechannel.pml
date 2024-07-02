
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
		  :: d?x -> if
					   :: (x != altbit) -> goto wait /* received bit is wrong, ignored */
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
  do 
    :: e?timer_on -> 
                     if 
                       :: e?timer_off /* go back to the beginning of the loop */

				       :: f!tout /* go back to the beginning of the loop */
                     fi
  od 
}