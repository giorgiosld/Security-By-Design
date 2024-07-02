	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p4 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p3 */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p2 */
;
		;
		;
		;
		
	case 9: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p1 */
;
		;
		;
		;
		
	case 12: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Timer */

	case 13: // STATE 1
		;
		XX = 1;
		unrecv(now.e, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 14: // STATE 2
		;
		XX = 1;
		unrecv(now.e, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 15: // STATE 3
		;
		_m = unsend(now.f);
		;
		goto R999;

	case 16: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Receiver */

	case 17: // STATE 1
		;
		XX = 1;
		unrecv(now.c, XX-1, 0, ((int)((P1 *)_this)->y), 1);
		((P1 *)_this)->y = trpt->bup.oval;
		;
		;
		goto R999;

	case 18: // STATE 2
		;
	/* 0 */	((P1 *)_this)->y = trpt->bup.oval;
		;
		;
		goto R999;

	case 19: // STATE 3
		;
	/* 0 */	((P1 *)_this)->y = trpt->bup.oval;
		;
		;
		goto R999;

	case 20: // STATE 4
		;
		_m = unsend(now.d);
		;
		goto R999;

	case 21: // STATE 5
		;
		((P1 *)_this)->altbit = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Sender */

	case 23: // STATE 3
		;
		_m = unsend(now.c);
		;
		goto R999;

	case 24: // STATE 6
		;
		_m = unsend(now.e);
		;
		goto R999;

	case 25: // STATE 7
		;
		XX = 1;
		unrecv(now.f, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 26: // STATE 9
		;
		XX = 1;
		unrecv(now.d, XX-1, 0, ((int)((P0 *)_this)->x), 1);
		((P0 *)_this)->x = trpt->bup.oval;
		;
		;
		goto R999;

	case 27: // STATE 10
		;
	/* 0 */	((P0 *)_this)->x = trpt->bup.oval;
		;
		;
		goto R999;

	case 28: // STATE 12
		;
	/* 0 */	((P0 *)_this)->x = trpt->bup.oval;
		;
		;
		goto R999;

	case 29: // STATE 13
		;
		_m = unsend(now.e);
		;
		goto R999;

	case 30: // STATE 14
		;
		((P0 *)_this)->altbit = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;
	}

