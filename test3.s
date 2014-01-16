# File: test3.s

# A simple assembly code program which uses the stdio.s functions
# to show the effect of the "div" instruction.

        .text

        .globl _main
        .globl main
_main: # entry point for OS X
main:  # entry point for linux

        mov     $95, %rax
        mov     $0, %rdx
        mov     $10, %rbx # divisor

        call    print_regs

        div     %rbx   # divide 128 bit number (rdx::rax) by rbx
                       # rax = quotient, rdx = remainder

        call    print_regs

        mov     $0, %rax
        ret
