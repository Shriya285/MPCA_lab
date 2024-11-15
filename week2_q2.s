MOV R0,#5
ANDS R1,R0,#1
BEQ L1
L2:
MOV R2,#1
B end_program
L1:
MOV R2,#0
end_program: