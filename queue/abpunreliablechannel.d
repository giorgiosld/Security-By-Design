proctype Sender
	state  19 -(tr   1)-> state   4  [id   0 tp   2] [----L] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:18 => (1)
	state   4 -(tr   1)-> state   6  [id   1 tp   2] [----L] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:21 => (1)
	state   4 -(tr  13)-> state   6  [id   2 tp   5] [----G] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:21 => c!altbit
	state   6 -(tr  14)-> state  17  [id   5 tp   3] [----G] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:24 => e!timer_on
	state  17 -(tr  15)-> state   4  [id   6 tp 504] [----G] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:27 => f?tout
	state  17 -(tr  16)-> state  15  [id   8 tp 506] [----G] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:27 => d?x
	state  15 -(tr  17)-> state  17  [id   9 tp   2] [----L] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:29 => ((x!=altbit))
	state  15 -(tr  18)-> state  13  [id  11 tp   2] [----L] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:29 => ((x==altbit))
	state  13 -(tr  19)-> state  14  [id  12 tp   3] [----G] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:31 => e!timer_off
	state  14 -(tr  20)-> state  19  [id  13 tp   2] [----L] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:32 => altbit = !(altbit)
proctype Receiver
	state   8 -(tr   7)-> state   6  [id  22 tp 505] [----G] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:42 => c?y
	state   6 -(tr   8)-> state   8  [id  23 tp   2] [----L] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:44 => ((y!=altbit))
	state   6 -(tr   9)-> state   4  [id  24 tp   2] [----L] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:44 => ((y==altbit))
	state   4 -(tr  10)-> state   5  [id  25 tp   6] [----G] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:45 => d!altbit
	state   5 -(tr  11)-> state   8  [id  26 tp   2] [----L] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:46 => altbit = !(altbit)
proctype Timer
	state   6 -(tr   3)-> state   4  [id  33 tp 503] [----G] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:54 => e?timer_on
	state   4 -(tr   4)-> state   6  [id  34 tp 503] [----G] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:56 => e?timer_off
	state   4 -(tr   5)-> state   6  [id  35 tp   4] [----G] /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:56 => f!tout

Transition Type: A=atomic; D=d_step; L=local; G=global
Source-State Labels: p=progress; e=end; a=accept;

pan: elapsed time 1.43e+07 seconds
pan: rate         0 states/second
