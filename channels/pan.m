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

		 /* CLAIM p4 */
	case 3: // STATE 1 - _spin_nvr.tmp:34 - [(!((!((Sender._p==wait))||(Timer._p==timeron))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==17))||(((int)((P2 *)Pptr(f_pid(2)))->_p)==4)))))
			continue;
		/* merge: assert(!(!((!((Sender._p==wait))||(Timer._p==timeron)))))(0, 2, 6) */
		reached[6][2] = 1;
		spin_assert( !( !(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==17))||(((int)((P2 *)Pptr(f_pid(2)))->_p)==4)))), " !( !(( !((Sender._p==wait))||(Timer._p==timeron))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[6][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:39 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p3 */
	case 5: // STATE 1 - _spin_nvr.tmp:25 - [(!((!((Sender._p==wait))||(Timer._p==timeroff))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==17))||(((int)((P2 *)Pptr(f_pid(2)))->_p)==6)))))
			continue;
		/* merge: assert(!(!((!((Sender._p==wait))||(Timer._p==timeroff)))))(0, 2, 6) */
		reached[5][2] = 1;
		spin_assert( !( !(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==17))||(((int)((P2 *)Pptr(f_pid(2)))->_p)==6)))), " !( !(( !((Sender._p==wait))||(Timer._p==timeroff))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:30 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p2 */
	case 7: // STATE 1 - _spin_nvr.tmp:14 - [(!((Sender._p==ackreceived)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==15))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 8 - _spin_nvr.tmp:19 - [(!((Sender._p==ackreceived)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][8] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==15))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p1 */
	case 10: // STATE 1 - _spin_nvr.tmp:3 - [(!((Sender._p==trytosend)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 8 - _spin_nvr.tmp:8 - [(!((Sender._p==trytosend)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][8] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Timer */
	case 13: // STATE 1 - abpunreliablechannelwith-ltl.pml:54 - [e?timer_on] (0:0:0 - 1)
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
	case 14: // STATE 2 - abpunreliablechannelwith-ltl.pml:55 - [e?timer_off] (0:0:0 - 1)
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
	case 15: // STATE 3 - abpunreliablechannelwith-ltl.pml:56 - [f!tout] (0:0:0 - 1)
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
	case 16: // STATE 9 - abpunreliablechannelwith-ltl.pml:59 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Receiver */
	case 17: // STATE 1 - abpunreliablechannelwith-ltl.pml:42 - [c?y] (0:0:1 - 1)
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
	case 18: // STATE 2 - abpunreliablechannelwith-ltl.pml:44 - [((y!=altbit))] (0:0:1 - 1)
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
	case 19: // STATE 3 - abpunreliablechannelwith-ltl.pml:45 - [((y==altbit))] (0:0:1 - 1)
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
	case 20: // STATE 4 - abpunreliablechannelwith-ltl.pml:45 - [d!altbit] (0:0:0 - 1)
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
	case 21: // STATE 5 - abpunreliablechannelwith-ltl.pml:46 - [altbit = !(altbit)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->altbit);
		((P1 *)_this)->altbit =  !(((int)((P1 *)_this)->altbit));
#ifdef VAR_RANGES
		logval("Receiver:altbit", ((int)((P1 *)_this)->altbit));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 11 - abpunreliablechannelwith-ltl.pml:49 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Sender */
	case 23: // STATE 3 - abpunreliablechannelwith-ltl.pml:22 - [c!altbit] (0:0:0 - 1)
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
	case 24: // STATE 6 - abpunreliablechannelwith-ltl.pml:24 - [e!timer_on] (0:0:0 - 3)
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
	case 25: // STATE 7 - abpunreliablechannelwith-ltl.pml:27 - [f?tout] (0:0:0 - 1)
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
	case 26: // STATE 9 - abpunreliablechannelwith-ltl.pml:28 - [d?x] (0:0:1 - 1)
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
	case 27: // STATE 10 - abpunreliablechannelwith-ltl.pml:29 - [((x!=altbit))] (0:0:1 - 1)
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
	case 28: // STATE 12 - abpunreliablechannelwith-ltl.pml:30 - [((x==altbit))] (0:0:1 - 1)
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
	case 29: // STATE 13 - abpunreliablechannelwith-ltl.pml:31 - [e!timer_off] (0:0:0 - 1)
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
	case 30: // STATE 14 - abpunreliablechannelwith-ltl.pml:32 - [altbit = !(altbit)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->altbit);
		((P0 *)_this)->altbit =  !(((int)((P0 *)_this)->altbit));
#ifdef VAR_RANGES
		logval("Sender:altbit", ((int)((P0 *)_this)->altbit));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 22 - abpunreliablechannelwith-ltl.pml:36 - [-end-] (0:0:0 - 1)
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

