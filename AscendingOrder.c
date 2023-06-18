ORG 0000H;
MOV R6 #04H;

UP1: R7 #04H;
	 MOV R1, #30H;
	 MOV A, @R1;
	 INC R1;
	 MOV B, @R1;
	 CJNE A, B, NEXT;
	 SJMP DOWN;

UP:  MOV A, @R1;
	 INC R1;
	 MOV B, @R1;
	 CJNE A, B, NEXT;
	 SJMP DOWN;


NEXT: JNC DOWN;
	  MOV @R1, A;
	  DEC R1;
	  MOV @R1, B;
	  INC R1;

DOWN: DJNZ R7, UP1;
	  DJNZ R6, UP1;
	  END;