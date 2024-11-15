MOV R0, #1
MOV R1, #1
CMP R0,R1
BEQ L1
BNE L2
L2:
SUB R2,R0,R1
B end_program
L1:
ADD R2,R0,R1
end_program: