MOV R0, #0x00F0
BL sum_of_digits

end_program:
    BKPT 0

sum_of_digits:
    MOV R1, #0
sum_loop:
    CMP R0, #0
    BEQ end_subroutine

    AND R2, R0, #0xF
    ADD R1, R1, R2

    LSR R0, R0, #4

    B sum_loop

end_subroutine:
    MOV R0, R1
    BX LR
