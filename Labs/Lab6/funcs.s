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
    