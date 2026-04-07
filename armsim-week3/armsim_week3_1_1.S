.DATA
    A:.WORD 1000,0
    B:.WORD 2000,0
    SUM:.WORD 0,0
    
.TEXT
    LDR R0,=A
    LDR R1,=B
    LDR R2,[R0]
    LDR R3,[R0,#4]
    LDR R4,[R1]
    LDR R5,[R1,#4]
    ADDS R2,R2,R4
    ADC R3,R3,R5
    LDR R6,=SUM
    STR R2,[R6]
    STR R3,[R6,#4]
    SWI 0x11