ORG 0000H;
;r6 stores no of zeros and r7 stores number of ones.

;counter to run loop 8 times -> as 8 bit number
MOV R5, #08H;
MOV R6, #00H;
MOV R7, #00H;

MOV A, #98H;
LOOP: RLC A;
	  JNC ZERO;OUTPUT BIT IS ZERO
	  SJMP ONE;

ZERO: INC R6;
	  DJNZ R5, LOOP;
	  END;

ONE: INC R7;
	 DJNZ R5, LOOP;
	 END;