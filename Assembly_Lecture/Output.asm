%include "io64.inc"

section .text
global CMAIN
CMAIN:
    PRINT_STRING msg
    PRINT_STRING msg
    xor rax, rax
    ret
    
section .data
    msg db 'Hello ', 0x00
    msg2 db 'World!', 0x0A