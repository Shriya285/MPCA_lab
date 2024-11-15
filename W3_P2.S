    MOV R1, #5
    MOV R2, #1

    BL factorial


end_program:
    BKPT 0

factorial:
    MOV R3, #1

factorial_loop:
    CMP R3, R1
    BEQ end_subroutine

    MUL R2, R2, R3
    ADD R3, R3, #1

    B factorial_loop

end_subroutine:
    BX LR
