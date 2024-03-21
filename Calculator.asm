%include "io64.inc"

section .data
    a dw 0
    b dw 0

section .text
global CMAIN
CMAIN:
    ; Input a and b value number
    GET_DEC 2, [a]
    GET_DEC 2, [b]
    
    ; Calculate a [operator] b
    mov ax, [a]
    add ax, [b]
    PRINT_DEC 2, ax
    NEWLINE
    mov ax, [a]
    sub ax, [b]
    PRINT_DEC 2, ax
    NEWLINE
    mov ax, [a]
    mov bx, [b]
    mul bx
    PRINT_DEC 2, ax
    NEWLINE
    mov ax, [a]
    mov bx, [b]
    div bx
    PRINT_DEC 2, ax

    xor rax, rax
    ret