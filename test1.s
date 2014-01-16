# File: test1.s

# A simple assembly code program which uses the stdio.s functions
# to show the effect of the "add" instruction.

        .text

        .globl _main
        .globl main
_main: # entry point for OS X
main:  # entry point for linux

        mov     $100, %rax
        mov     $3, %rbx

        call    print_rax
        call    print_rbx

        add     %rbx, %rax

        call    print_rax
        call    print_rbx

        mul     %rbx

        call    print_regs

        mov     $0, %rax
        ret
