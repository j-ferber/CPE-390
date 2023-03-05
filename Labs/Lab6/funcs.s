.globl _Z5counti # Question 1
  _Z5counti: 
    mov $1, %rdx 

  loopcount:
    add $3, %rdx 
    cmp %rcx, %rdx 
    jl loopcount
    ret

.globl _Z5sumsqPKyj # Question 2
  _Z5sumsqPKyj: 
    xor %rax, %rax
    push %r10
    push %r11
    mov $0, %r11
  
  sumsqloop:
    mov (%rcx), %r10
    imul %r10, %r10
    add %r10, %rax
    add $8, %rcx
    add $1, %r11
    cmp %r11, %rdx
    jg sumsqloop
    pop %r10
    pop %r11
    ret
 
.globl _Z4add1Pyj # Question 3
  _Z4add1Pyj:
    push %r11
    push %r10
    xor %r11, %r11

  add1loop:
    mov (%rcx), %r10
    add $1, %r10
    mov %r10, (%rcx)
    add $8, %rcx
    add $1, %r11
    cmp %r11, %rdx
    jg add1loop
    pop %r11
    pop %r10
    ret    

.globl _Z11replaceZeroy # Question 4
  _Z11replaceZeroy:
    xor %rax, %rax
    mov %rcx, %rax
    mov $0xFFFFF08F, %rdx
    and %rdx, %rax
    mov %rdx, %rcx
    ret

.globl _Z10replaceOney # Question 5
  _Z10replaceOney:
    xor %rax, %rax
    mov %rcx, %rax
    mov $0x00000440, %rdx
    or %rdx, %rax
    mov %rdx, %rcx
    ret

.globl _Z7togglesy # Question 6          0xF2ECBABE = 1111 0010 1110 1100 1011 1010 1011 1110  
  _Z7togglesy:     #                                = 1111 0010 1110 1100 1011 XXX0 1XXX 1110
    xor %rax, %rax #                                = 1111 0010 1110 1100 1011 0100 1100 1110
    mov %rcx, %rax
    mov $0x00000440, %rdx
    xor %rdx, %rax
    mov %rdx, %rcx
    ret

.globl _Z8replaceDy # Question 7 -> NOT WORKING
  _Z8replaceDy:
    xor %rax, %rax
    push %r10
    mov %rcx, %r10
    mov %rcx, %rax
    mov $0x000000000F0, %rdx
    and %rdx, %rax
    cmp $0x000000000C0, %rdx
    je replaceD # 1100 1101
  replaceD:
    or $0x000000000D0, %r10
    mov %r10, %rcx
    pop %r10
    ret

