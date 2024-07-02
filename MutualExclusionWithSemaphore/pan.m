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

		 /* PROC invariant */
	case 3: // STATE 1 - peterson_mutual_exclusion.pml:46 - [assert((mutex<=1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		spin_assert((((int)now.mutex)<=1), "(mutex<=1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - peterson_mutual_exclusion.pml:47 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P2 */
	case 5: // STATE 3 - peterson_mutual_exclusion.pml:29 - [b2 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.b2);
		now.b2 = 1;
#ifdef VAR_RANGES
		logval("b2", ((int)now.b2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - peterson_mutual_exclusion.pml:29 - [x = P1_Turn] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.x;
		now.x = 2;
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - peterson_mutual_exclusion.pml:34 - [(((x==P2_Turn)||!(b1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!(((now.x==1)|| !(((int)now.b1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - peterson_mutual_exclusion.pml:36 - [mutex = (mutex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 7 - peterson_mutual_exclusion.pml:38 - [mutex = (mutex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - peterson_mutual_exclusion.pml:39 - [b2 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((int)now.b2);
		now.b2 = 0;
#ifdef VAR_RANGES
		logval("b2", ((int)now.b2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 12 - peterson_mutual_exclusion.pml:41 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P1 */
	case 12: // STATE 3 - peterson_mutual_exclusion.pml:11 - [b1 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.b1);
		now.b1 = 1;
#ifdef VAR_RANGES
		logval("b1", ((int)now.b1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 4 - peterson_mutual_exclusion.pml:11 - [x = P2_Turn] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.x;
		now.x = 1;
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 5 - peterson_mutual_exclusion.pml:16 - [(((x==P1_Turn)||!(b2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!(((now.x==2)|| !(((int)now.b2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 6 - peterson_mutual_exclusion.pml:18 - [mutex = (mutex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 7 - peterson_mutual_exclusion.pml:21 - [mutex = (mutex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 8 - peterson_mutual_exclusion.pml:22 - [b1 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.b1);
		now.b1 = 0;
#ifdef VAR_RANGES
		logval("b1", ((int)now.b1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 12 - peterson_mutual_exclusion.pml:24 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
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

