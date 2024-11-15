
MATRIX_A: .word 10,20,30,40,50,60,70,80,90
MATRIX_B: .word 1,2,3,4,5,6,7,8,9
RESULT: .space 36

LDR R0, =MATRIX_A
LDR R1, =MATRIX_B
LDR R2, =RESULT
MOV R3, #9
Loop:
LDR R4, [R0], #4
LDR R5, [R1], #4
ADD R6, R4, R5
STR R6, [R2], #4
SUB R3, R3, #1
CMP R3, #0
BNE Loop
SWI 0x011
end_program: