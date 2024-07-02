/* Peterson's algorithm for mutual exclusion */

bool b1, b2; // control bits
mtype = {P1_Turn, P2_Turn};
mtype x; // turn variable
byte mutex = 0; // variable to check mutual exclusion

active proctype P1(){
	do
	  :: (true) -> skip; /* non-critical section loop*/
	  :: atomic {x = P2_Turn; b1 = true; }
        /* without this atomic mutual exlusion is not 
           guaranteed */
       wait1:
         /* condition check */
	     (x==P1_Turn || !b2) -> 
         /* critical section*/ 
         mutex++; 
	     /* exit critical section */ 
         crit1:
         mutex--;
	     b1 = false
	od
}

active proctype P2(){
	do
	  :: (true) -> skip; /* non-critical section loop*/
	  :: atomic {x = P1_Turn; b2 = true; }
         /* without this atomic mutual exlusion is not 
            guaranteed */
        wait2:
         /* condition check */
         (x==P2_Turn || !b1) -> 
         /* critical section*/ 
         mutex++; 
	     /* exit critical section */
        crit2: mutex--;
	     b2 = false
	od
}

/* Process to check continuously the invariant 
   condition of mutual exclusion */
active proctype invariant() {
	assert(mutex <= 1)
}


/*ltl starvfreedom {([] P1@wait1 -> <> P1@crit1) && ([] P2@wait2 -> <> P2@crit2)}*/



