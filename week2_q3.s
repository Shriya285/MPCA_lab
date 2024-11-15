MOV R0,#3
MOV R1,#1

factorial:
MUL R1,R0,R1
SUB R0,R0,#1
CMP R0,#0
BNE factorial

end_program:

