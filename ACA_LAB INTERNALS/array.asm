	AREA ARRAY,CODE,READONLY
	ENTRY
MAIN

	LDR R0,[R1];loading address to R0
	LDR R3,COUNT ;loading address of the count into 
	;LDR R5,RESULT
	LDR R4,[R3]
LOOP
	LDR R1,[R0];loading content of address which is in R0 into R1
	CMP R1,#0;comparing content of R1 to 0 to check for negative number
	BMI JUMP;if the number in R1 is negative goto jump
	ADD R2,R1;else add R2 and R1 and stores in R2
	ADD R0,#4;incrementing the address in R0 to fetch next element of array
	ADD R4,#-1;decrementing counter
	CMP R4,#0;checks if R4 thta is counter is 0 or not 
	BEQ DONE;if counter is 0 goto done
	B LOOP;else go to loop
JUMP
	ADD R0,#4;incrementing address
	ADD R4,#-1;decrementing counter
	B LOOP;go to loop
DONE	
	LDR R3,RESULT;laoding address to store result
	STR R2,[R3];storing result
STOP B STOP	
VALUE DCD 0X40000004;
COUNT DCD 0X40000000;
RESULT DCD 0X4000002C;
		END
