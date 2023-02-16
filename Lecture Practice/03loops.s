.globl main
# write a loop that counts from 0 to 1 billion = 1
loop1: 
  mov $0, %rax
  mov $8000000000, %rcx
loop1a:
  add $1, %rax

  cmp %rcx, %rax # rax-1 billion
  jne loop1a 

  ret

loop2:
  mov $1000000000, %rcx
loop2a:
  sub $1, %rcx
  
  cmp $0, %rcx
  jnz loop2a
  
  ret


loop3:
  sub $8, %rsp
  mov $1, %rcx
loop3a:
  push %rcx # save
  call f
  pop %rcx # restore
  add $1, %rcx
  cmp $100, %rcx
  jle loop3a

loop4:
  push %r10
  mov $1, %r10
loop4a:
  call f
  add $1, %r10
  cmp $100, %r10
  jle loop4a
  pop %r10
  ret

main:
  call loop1
  # call loop2
  ret