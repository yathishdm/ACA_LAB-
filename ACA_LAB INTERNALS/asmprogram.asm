	AREA ASMPROGRAM,CODE,READONLY
	ENTRY
MAIN
	LDR R0,VALUE;LOADING THE VALUE TO R0
    LDR R1,[R0];loading to R1
	LDR R2,[R0];loading value into R2
	AND R2,#0x000F000;fourth nibble is masking to R2
	AND R1,#0X000000F;Oth nibble is masking to R1
	LSL R1,#16;shifting R1 to fourth nibble for addition
	ADD R1,R2;adding r1 and r2
	LDR R0,RESULT;
	STR R1,[R0];
		
VALUE DCD 0X40000004
RESULT DCD 0X4000000C
	END
	

