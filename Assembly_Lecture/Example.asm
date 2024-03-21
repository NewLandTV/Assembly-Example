%include "io64.inc"

section .data
    a dw 0
    b dw 0
    
section .text
global CMAIN
CMAIN:
    ; a + 2 * b
    mov rbp, rsp; for correct debugging
    mov eax, 0
    GET_DEC 2, [a]
    GET_DEC 2, [b]
    mov eax, [b]
    imul eax, 2
    add eax, [a]
    PRINT_DEC 2, eax
    xor rax, rax
    ret