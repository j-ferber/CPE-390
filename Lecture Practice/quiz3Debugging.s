.globl main

# first parameter is alwys passed to 

f:
  push %rcx # subtract 8 from rsp, mov %rcx, (%rsp)
  pop %rdx  # mov (%rsp), %rdx  then add 8 to rsp
  ret

main:
  mov $5, %rcx
  mov $11, %rdx
  push %r10
  push %r11
  push %r12
  mov $92, %r10
  mov $102, %r10
  mov $14, %r10
  call f

  pop %r12
  pop %r11
  pop %r10

  ret