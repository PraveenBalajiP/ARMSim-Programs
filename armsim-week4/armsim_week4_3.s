.DATA
        X: .WORD 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16
        Y: .WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.TEXT
        LDR R0,=X
        LDR R1,=Y
        LDMIA R0!,{R2-R7}
        STMIA R1!,{R2-R7}
        LDMIA R0!,{R2-R7}
        STMIA R1!,{R2-R7}
        LDMIA R0!,{R2-R5}
        STMIA R1!,{R2-R5}
        SWI 0X11