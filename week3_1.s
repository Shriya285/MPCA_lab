ORG 1000H ; Assuming starting address is 1000H

MOV R0, 00F0H ; Given number

MOV R1, 32 ; Number of bits in Given Number

MOV R2, 0 ; Counter for number of ones

MOV R3, 0 ; Counter for number of zeroes

CHECK_PARITY:

  MOV A, R0 ; Move content of R0 to accumulator

  ANI 01H ; AND accumulator with 1 to get the LSB

  JZ INCREMENT_ZEROES ; If LSB is 0, jump to INCREMENT_ZEROES

  INX R2 ; Increment ones counter R2

  JMP SHIFT_AND_DECREMENT ; Jump to shift and decrement

INCREMENT_ZEROES:

  INX R3 ; Increment zeroes counter R3

SHIFT_AND_DECREMENT:

  RLC ; Shift the contents of register R0 one bit to the right

  DCX R1 ; Decrement count in R1 (Number of bits in given number)

  JNZ CHECK_PARITY ; Jump back to CHECK_PARITY if not all bits are checked

  MOV A, R2 ; Move content of R2 to accumulator

  ANI 01H ; AND accumulator with 1 to check even or odd parity

  JZ EVEN_PARITY ; If result after AND is zero, it indicates even parity

  JMP ODD_PARITY ; Else, it indicates odd parity

EVEN_PARITY:

  ; Your code for even parity goes here
  ; Display "Even Parity" or store the result in memory, etc.
  JMP END_PROGRAM

ODD_PARITY:

  ; Your code for odd parity goes here
  ; Display "Odd Parity" or store the result in memory, etc.

END_PROGRAM:

  ; End of the program

HLT ; Halt the program execution
