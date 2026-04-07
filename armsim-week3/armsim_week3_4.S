.DATA
	matrixA:.WORD 1,2,3,4,5,6,7,8,9
	matrixB:.WORD 6,7,8,9,1,2,3,4,5
	res:.WORD 0,0,0,0,0,0,0,0,0
	size:.WORD 10
.TEXT
	LDR R0,=matrixA
	LDR R1,=matrixB
	LDR R2,=size
	LDR R3,=res
	MOV R7,#0
	LDR R2,[R2]
LOOP:
	LDR R4,[R0],#4
	LDR R5,[R1],#4
	ADD R6,R4,R5
	STR R6,[R3]
	ADD R3,R3,#4
	ADD R7,R7,#1
	CMP R7,R2
	BNE LOOP
	SWI 0X11