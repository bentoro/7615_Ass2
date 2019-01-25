%include "asm_io.inc"

segment .data
        bytes   dd  06C697665h  ;"live"
        end     db  0           ;null

segment .text
        global  asm_main
asm_main:
        enter   0,0
        pusha
        mov     eax, bytes
        call    print_string
        call    print_nl
        mov     eax, [bytes]
        dump_mem    0, bytes, 1
        dump_regs   0
        pusha
        popa
        mov         eax, 0
        leave
        ret
