%include "io64.inc"

; 문제 1. a * b + c * d 결과를 구하시오.
; 입력 : 7 3 1 9
; 출력 : 30
section .data
    a dw 0
    b dw 0
    c dw 0
    d dw 0
    
section .text
global CMAIN
CMAIN:
    mov eax, 0
    GET_DEC 2, [a]
    GET_DEC 2, [b]
    
    mov eax, [a]
    imul eax, [b]
    
    mov edx, eax
    
    mov eax, 0
    GET_DEC 2, [c]
    GET_DEC 2, [d]
    
    mov eax, [c]
    imul eax, [d]
    
    add eax, edx
    PRINT_DEC 2, eax
    
    xor rax, rax
    ret