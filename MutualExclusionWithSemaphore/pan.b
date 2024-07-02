	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC invariant */
;
		;
		
	case 4: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P2 */

	case 5: // STATE 3
		;
		now.b2 = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 4
		;
		now.x = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 8: // STATE 6
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 7
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 8
		;
		now.b2 = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P1 */

	case 12: // STATE 3
		;
		now.b1 = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 4
		;
		now.x = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: // STATE 6
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 7
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 8
		;
		now.b1 = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;
	}

