ORG 0000H;
MOV R6, #04H;
MOV DPTR, #SRC;
UP1: MOV 40H, R6;
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

DOWN: DJNZ 40H, UP;
	  DJNZ R6, UP1;

;DATA IN ROM
ORG 30H;
SRC: DB 22, 55, 66, 25
	  END;