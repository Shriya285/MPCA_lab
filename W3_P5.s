A: .word 5,10,15,20,25,30,35,40,45,50
LDR R0, =A
MOV R1, #10
MOV R3, #10
MOV R2, #0

LOOP:
    LDR R4, [R0], #4
    CMP R4, R3
    BEQ KEYFOUND
    SUB R1, R1, #1
    CMP R1, #0
    BNE LOOP
    B NOTFOUND

KEYFOUND:
    MOV R2, #1

NOTFOUND:
    SWI 0x11
    .end
