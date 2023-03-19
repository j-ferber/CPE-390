.globl _Z5counti # Question 1 (rdx gets to 22 and stops the loop)
  _Z5counti: 
    mov $1, %rdx 

  loopcount:
    add $3, %rdx 
    cmp %rcx, %rdx 
    jl loopcount
    ret

.globl _Z5sumsqPKyj # Question 2 (rax adds up to 102)
  _Z5sumsqPKyj: 
    xor %rax, %rax
    mov $0, %r11
  
  sumsqloop:
    mov (%rcx), %r10
    imul %r10, %r10
    add %r10, %rax
    add $8, %rcx
    add $1, %r11
    cmp %r11, %rdx
    jg sumsqloop
    ret
 
.globl _Z4add1Pyj # Question 3 (6, 4, 7, 8, 5, 10)
  _Z4add1Pyj:
    xor %r11, %r11

  add1loop:
    mov (%rcx), %r10
    add $1, %r10
    mov %r10, (%rcx)
    add $8, %rcx
    add $1, %r11
    cmp %r11, %rdx
    jg add1loop
    ret    

.globl _Z11replaceZeroy # Question 4 (Binary:0000000000000000000000000000000011110010111011001011000010001110 -> Hex: f2ecb08e)
  _Z11replaceZeroy:
    xor %rax, %rax
    mov %rcx, %rax
    mov $0xFFFFF08F, %rdx
    and %rdx, %rax
    mov %rdx, %rcx
    ret

.globl _Z10replaceOney # Question 5 (Binary: 0000000000000000000000000000000011110010111011001011111011111110 -> Hex: f2ecbefe)
  _Z10replaceOney:
    xor %rax, %rax
    mov %rcx, %rax
    mov $0x00000440, %rdx
    or %rdx, %rax
    mov %rdx, %rcx
    ret

.globl _Z7togglesy # Question 6 (Binary: 0000000000000000000000000000000011110010111011001011111011111110 -> Hex: f2ecbefe) 
  _Z7togglesy:     #                                
    xor %rax, %rax #                                
    mov %rcx, %rax
    mov $0x00000440, %rdx
    xor %rdx, %rax
    ret

.globl _Z8replaceDy # Question 7 (Binary: 0000000000000000000010011000011101100101010000110010000111011001 -> Hex: 987654321d9)
  _Z8replaceDy:
    mov %rcx, %rax
    mov $0x000000000F0, %rdx
    and %rdx, %rax
    cmp $0x000000000C0, %rdx
    jz replaceD # 1100 1101
  replaceD:
    or $0x00000000010, %rcx
    mov %rcx, %rax
    ret

