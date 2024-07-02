#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC Timer */
	case 3: // STATE 1 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:54 - [e?timer_on] (0:0:0 - 0)
		reached[2][1] = 1;
		if (q_zero(now.e))
		{	if (boq != now.e) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.e) == 0) continue;

		XX=1;
		if (3 != qrecv(now.e, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.e-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.e, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.e);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.e))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 4: // STATE 2 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:56 - [e?timer_off] (0:0:0 - 0)
		reached[2][2] = 1;
		if (q_zero(now.e))
		{	if (boq != now.e) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.e) == 0) continue;

		XX=1;
		if (2 != qrecv(now.e, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.e-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.e, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.e);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.e))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 5: // STATE 3 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:58 - [f!tout] (0:0:0 - 0)
		IfNotBlocked
		reached[2][3] = 1;
		if (q_full(now.f))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.f);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.f, 0, 1, 1);
		if (q_zero(now.f)) { boq = now.f; };
		_m = 2; goto P999; /* 0 */
	case 6: // STATE 9 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:61 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Receiver */
	case 7: // STATE 1 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:42 - [c?y] (0:0:1 - 0)
		reached[1][1] = 1;
		if (q_zero(now.c))
		{	if (boq != now.c) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.c) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->y);
		;
		((P1 *)_this)->y = qrecv(now.c, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Receiver:y", ((int)((P1 *)_this)->y));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.c);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->y)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.c))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 8: // STATE 2 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:44 - [((y!=altbit))] (0:0:1 - 0)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)((P1 *)_this)->y)!=((int)((P1 *)_this)->altbit))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: y */  (trpt+1)->bup.oval = ((P1 *)_this)->y;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->y = 0;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 3 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:45 - [((y==altbit))] (0:0:1 - 0)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((int)((P1 *)_this)->y)==((int)((P1 *)_this)->altbit))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: y */  (trpt+1)->bup.oval = ((P1 *)_this)->y;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->y = 0;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 4 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:45 - [d!altbit] (0:0:0 - 0)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(now.d))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.d);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->altbit)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.d, 0, ((int)((P1 *)_this)->altbit), 1);
		if (q_zero(now.d)) { boq = now.d; };
		_m = 2; goto P999; /* 0 */
	case 11: // STATE 5 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:46 - [altbit = !(altbit)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->altbit);
		((P1 *)_this)->altbit =  !(((int)((P1 *)_this)->altbit));
#ifdef VAR_RANGES
		logval("Receiver:altbit", ((int)((P1 *)_this)->altbit));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 11 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:49 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Sender */
	case 13: // STATE 3 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:22 - [c!altbit] (0:0:0 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		if (q_full(now.c))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.c);
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->altbit)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.c, 0, ((int)((P0 *)_this)->altbit), 1);
		if (q_zero(now.c)) { boq = now.c; };
		_m = 2; goto P999; /* 0 */
	case 14: // STATE 6 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:24 - [e!timer_on] (0:0:0 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		if (q_full(now.e))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.e);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.e, 0, 3, 1);
		if (q_zero(now.e)) { boq = now.e; };
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 7 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:27 - [f?tout] (0:0:0 - 0)
		reached[0][7] = 1;
		if (q_zero(now.f))
		{	if (boq != now.f) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.f) == 0) continue;

		XX=1;
		if (1 != qrecv(now.f, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.f-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.f, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.f);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.f))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 16: // STATE 9 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:28 - [d?x] (0:0:1 - 0)
		reached[0][9] = 1;
		if (q_zero(now.d))
		{	if (boq != now.d) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.d) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->x);
		;
		((P0 *)_this)->x = qrecv(now.d, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Sender:x", ((int)((P0 *)_this)->x));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.d);
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->x)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.d))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 17: // STATE 10 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:29 - [((x!=altbit))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)((P0 *)_this)->x)!=((int)((P0 *)_this)->altbit))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: x */  (trpt+1)->bup.oval = ((P0 *)_this)->x;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->x = 0;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 12 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:30 - [((x==altbit))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((int)((P0 *)_this)->x)==((int)((P0 *)_this)->altbit))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: x */  (trpt+1)->bup.oval = ((P0 *)_this)->x;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->x = 0;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 13 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:31 - [e!timer_off] (0:0:0 - 0)
		IfNotBlocked
		reached[0][13] = 1;
		if (q_full(now.e))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.e);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.e, 0, 2, 1);
		if (q_zero(now.e)) { boq = now.e; };
		_m = 2; goto P999; /* 0 */
	case 20: // STATE 14 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:32 - [altbit = !(altbit)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->altbit);
		((P0 *)_this)->altbit =  !(((int)((P0 *)_this)->altbit));
#ifdef VAR_RANGES
		logval("Sender:altbit", ((int)((P0 *)_this)->altbit));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 22 - /home/giorgiosld/university/master/SBD/lab/abpunreliablechannel.pml:36 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

