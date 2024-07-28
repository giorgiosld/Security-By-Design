/* Enumeration of our symbolic constant to have a more readable model. */
mtype = {ok, err, msg1, msg2, msg3, keyA, keyB, agentA, agentB,
	 nonceA, nonceB, agentI, keyI, nonceI };

/* Encrypted msg.  */
typedef Crypt { mtype key, content1, content2 };

/* Network modelled as a single message channel shared by agents. */ 
chan network = [0] of {mtype, /* msg number */
		       mtype, /* receiver */
		       Crypt
};

/* global variables for verification*/
mtype partnerA, partnerB;
mtype statusA = err;
mtype statusB = err;

bool knows_nonceA = false;
bool knows_nonceB = false;

/* Agent (A)lice */
active proctype Alice() {
	/* local variables */

    	mtype pkey;      /* the other agent's public key                 */
    	mtype pnonce;    /* nonce that we receive from the other agent   */
    	Crypt messageAB; /* our encrypted message to the other party     */
    	Crypt data;      /* received encrypted message                   */
	

    	/* Initialization of non deterministic choice made by alice to choose the partner */

	    if
    	:: partnerA = agentB; pkey = keyB
    	:: partnerA = agentI; pkey = keyI
    	fi ;

	
    	/* Prepare the first message */

    	messageAB.key = pkey;
    	messageAB.content1 = agentA;
    	messageAB.content2 = nonceA;

    	/* Send the first message to the other party */

    	network ! msg1 (partnerA, messageAB);

    	/* Wait for an answer. Observe that we are pattern-matching on the
     	messages that start with msg2 and agentA, that is, we block until 
     	we see a message with values msg2 and agentA as the first and second  
     	components. The third component is copied to the variable data. */

    	network ? (msg2, agentA, data);

    	/* We proceed only if the key field of the data matches keyA and the
     	received nonce is the one that we have sent earlier; block
     	otherwise.  */
    	if
    	:: (data.key == keyA) && (data.content1 == nonceA) -> 

        		/* Obtain Bob's nonce */

        		pnonce = data.content2;

        		/* Prepare the last message */
        		messageAB.key = pkey;
        		messageAB.content1 = pnonce;
        		messageAB.content2 = 0;  /* content2 is not used in the last message,
                                 				just set it to 0 */


        		/* Send the prepared messaage */
        		network ! msg3 (partnerA, messageAB);


        		/* and last - update the auxilary status variable */
        		statusA = ok;
    	
    	fi ;
	
}

/* Agent (B)ob */
active proctype Bob() {
	/* local variables */
	
	mtype pkey;	 	/* other agent's pub-key */
	mtype pnonce;    	/* nonce that we receive from the other agent   */
  	Crypt messageAB; 	/* our encrypted message to the other party     */
 	Crypt data;      	/* received encrypted message                   */

	/* Initialization  */

  	partnerB = agentA;
	pkey = keyA;

	

	    /* Wait for the first interation from Alice taking a look that the message received respect the 
	        pattern-matching defined before. */

	    network ? (msg1, agentB, data);
	    
	    /* Proceed if key field match with keyB  */
	    if
	    :: (data.key == keyB)  -> 
            
		    /* Get Alice's nonce */	
        	pnonce = data.content2;

        	/* Prepare the first message from Bob, so in the protocol path scheme this is the 2nd msg sent.
            	The key must be the Alice ones, the content1 must be the nonce generated and sent from Alice,
            	the content 2 must be the Bob's nonce
         	*/
        
        	messageAB.key = pkey;
        	messageAB.content1 = pnonce;
        	messageAB.content2 = nonceB;

        	/* Send the second message to the other parties */
        	network ! msg2(partnerB, messageAB);

        	/* Wait for the last message */
        
        	network ? (msg3, agentB, data);
        
        	/* We proceed only if the key field matches keyB and the received nonce is the one we have sent earlier */
        	if
        	:: (data.key == keyB) && (data.content1 == nonceB) -> 
		        /* Update the auxiliary status variable */
		        statusB = ok;
        	
	        fi ;
	    
	    fi ;
	
}

/* Agent (I)ntruder */

active proctype Intruder() {
    mtype msg, recpt;
    Crypt data, intercepted;
    do
        :: network ? (msg, _, data) ->
        
        if /* perhaps store the message */
        :: intercepted. key = data.key;
            intercepted.content1 = data.content1;
            intercepted.content2 = data.content2;
        :: skip;
        fi ;

        /* Check if intercepted message can be decrypted */
        if
        :: data.key = keyI ->
            if
            :: (data.content1 == nonceA || data.content2 == nonceA)
                -> knows_nonceA = true;
            fi ;
            if
            :: (data.content1 == nonceB) || (data.content2 == nonceB)
                -> knows_nonceB = true;
            fi ;
        fi ;

        :: /* Replay or send a message */
        if /* choose message type */
        :: msg = msg1;
        :: msg = msg2;
        :: msg = msg3;
        fi ;
        if /* choose a recepient */
        :: recpt = agentA;
        :: recpt = agentB;
        fi ;
        if /* replay intercepted message or assemble it */
            :: data.key      = intercepted.key;
                data.content1 = intercepted.content1;
                data.content2 = intercepted.content2;
            :: if /* assemble content1 */
                :: data.content1 = agentA;
                :: data.content1 = agentB;
                :: data.content1 = agentI;
                :: data.content1 = nonceI;
               fi ;
            if /* assemble key */
                :: data.key = keyA;
                :: data.key = keyB;
                :: data.key = keyI;
            fi ;

            data.content2 = nonceI;

        fi ;
        
        network ! msg (recpt, data);
    od
}

/* check if Alice and Bob finish */
ltl verification1 { []<> (statusA == ok && statusB == ok) } 

/* If both Alice and Bob reach the end of their runs */
ltl prop1 { []((statusA == ok && statusB == ok) -> (partnerA == agentB && partnerB == agentA)) } 

/* If agent A reaches the end of its run (statusA is ok) and A believes it is talking to B  */ 
ltl prop2 { []((statusA == ok && partnerA == agentB) -> !knows_nonceA) } 

/* Similarly for B's nonce. If agent B reaches the end of its run (statusB is ok) and it believes it is talking to A (partnerB is agentA), then the intruder does not know B's nonce (!knows_nonceB) */
ltl prop3 { []((statusB == ok && partnerB == agentA) -> !knows_nonceB) } 

/* Last test to check if even A and B are in the end, and think thery're talking to each others, the intruder knows their nonces. */
ltl mitm_attack {
  [] ((statusA == ok && statusB == ok && partnerA == agentB && partnerB == agentA) -> (!knows_nonceA && !knows_nonceB))
} 
