.DATA
        MATRIX: .WORD   0,0,0,0,0,0,0,0,0
        ROW: .WORD 3
.TEXT
        LDR R0,=MATRIX
        LDR R1,=ROW
        LDR R1,[R1]
        ADD R2,R1,#1
        MOV R4,#4
        MUL R3,R2,R4
        MOV R5,#2
DIAGONAL:
        STR R5,[R0]
        ADD R0,R0,R3
        SUB R1,R1,#1
        CMP R1,#0
        BNE DIAGONAL
        SWI 0X11