MOV R0,#2
MOV R1,#1

gcd:
CMP R0,R1
BEQ end_gcd

BGT subtract_r1_r0

BLT subtract_r0_r1

subtract_r1_r0:
SUBS R0,R0,R1
B gcd

subtract_r0_r1:
SUBS R1,R1,R0
B gcd

end_gcd: