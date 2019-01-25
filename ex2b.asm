%include "asm_io.inc"

segment .data
        bytes   dd  06C697665h  ;"live"
        end     db  0           ;null

segment .text
        global  asm_main
asm_main:
	mov eax, 0AABBCCDDh
	mov [M1], eax
	mov ebx, [M1]
