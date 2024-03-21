%include "io64.inc"

section .data
    a dw 0
    b dw 0
    c dw 0
    d dw 0

section .text
global CMAIN
CMAIN:
    ; a + b + c * d
    PRINT_STRING 'Hello World!'
    NEWLINE
    
    GET_DEC 2, [a]
    GET_DEC 2, [b]
    mov eax, [a]
    add eax, [b]
    
    PRINT_DEC 2, eax
    NEWLINE
    
    mov edx, eax
    
    GET_DEC 2, [c]
    GET_DEC 2, [d]
    mov eax, [c]
    imul eax, [d]
    
    add edx, eax
    
    PRINT_DEC 2, edx
    NEWLINE
    
    xor rax, rax
    ret