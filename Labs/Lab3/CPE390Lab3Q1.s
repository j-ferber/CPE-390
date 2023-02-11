.globl main
main:
  
  mov $6, %rcx
  mov $7, %rdx  
  call f
  ret

  .globl f

f:
  leaq (%rcx, %rdx), %rax
  shr %rax
  ret