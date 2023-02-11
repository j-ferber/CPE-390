.globl main
main:
  mov $5, %rax
  mov $7, %rbx
  mov $9, %rcx

  mul %rcx
  mov %rax, %rsi
  
  mov $5, %rax
  
  leaq (%rax, %rbx), %rdx
  
  sub %rax, %rbx
  mov %rbx, %rdi
  
  mov $0, %rdx        
  mov %rsi, %rax   
  mov %rdi, %rcx   
  div %rcx

  ret