.globl main

main:
    mov 0xDEADBEEF12345678, %rax
    mov 0xABBAF0BB0BBE98D1, %rbx
    
    mov %rbx, %rcx
    and %rax, %rcx
    
    mov %rbx, %rdx
    or  %rax, %rdx
    
    mov %rbx, %rsi
    xor %rax, %rsi

             # rcx = __________________
             # rdx = __________________
             # rsi = __________________
    ret