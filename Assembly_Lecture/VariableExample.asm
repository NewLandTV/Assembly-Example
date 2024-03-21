%include "io64.inc"

; 초기값을 가지는 변수를 저장하는 섹션
section .data

; 크기와 변수 개수를 지정해줌
section .bss
    ; 형식 : [변수 이름] [크기지시자] [개수]
    a resb 1    ; a 변수에 1byte 크기의, 1개의 메모리 공간을 확보하겠다. (총 1byte 공간 학보)
    b resw 2    ; b 변수에 2byte 크기의, 2개의 메모리 공간을 확보하겠다. (총 4byte 공간 학보)
    c resd 1    ; c 변수에 4byte 크기의, 1개의 메모리 공간을 확보하겠다. (총 4byte 공간 학보)
    d resq 3    ; d 변수에 8byte 크기의, 3개의 메모리 공간을 확보하겠다. (총 24byte 공간 학보)

section .text
global CMAIN
CMAIN:
    
    
    xor rax, rax
    ret
    ; 19 ~ 20라인은 프로그램을 종료하고 운영체제로 돌려주는 코드로 C언어의 return 0; 에 해당한다.