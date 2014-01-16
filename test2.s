# File: test2.s

# A simple assembly code program which uses the stdio.s functions
# to show the effect of the "mul" instruction.

        .text

        .globl _main
        .globl main
_main: # entry point for OS X
main:  # entry point for linux

        call    print_regs

        mov     $100, %rax
        mov     $3, %rbx

        call    print_regs

        mul     %rbx

        call    print_regs

        mov     $0, %rax
        ret
