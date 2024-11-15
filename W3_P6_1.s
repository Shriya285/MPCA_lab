N: .word 10
DATA: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
RES: .word 0
 LDR R1, =N
 LDR R2, [R1]
 MOV R3, #0
 MOV R4, #0
L:
 CMP R4, R2
 BGE FINISH
 LDR R5, =DATA
 LDR R6, [R5, R4, LSL #2]
 AND R7, R4, #1
 CMP R7, #0
 BNE NEXT
 ADD R3, R3, R6
NEXT:
 ADD R4, R4, #1
 B L
FINISH:
 LDR R7, =RES
 STR R3, [R7]
 MOV R7, #1
 MOV R0, #0
 SWI 0