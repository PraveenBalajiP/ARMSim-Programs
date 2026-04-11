.DATA
    NUM: .WORD 0x0000000F
    RES: .WORD 00
.TEXT
    LDR R0,=NUM
    LDR R0,[R0]
    MOV R1,#0
    MOV R2,#32
    LDR R8,=RES
    MOV R9,#00
    MOV R10,#01
LOOP:
    AND R3,R0,#1
    CMP R3,#0
    BEQ EVEN
    ADD R1,R1,#1
EVEN:
    LSR R0,R0,#1
    SUB R2,R2,#1
    CMP R2,#0
    BNE LOOP
    AND R7,R1,#1
    CMP R7,#1
    BEQ ODD
    MOV R7,R9
    STR R9,[R8]
    B EXIT
ODD:
    MOV R7,R10
    STR R10,[R8]    
EXIT:
    SWI 0X11