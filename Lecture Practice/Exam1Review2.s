  .globl main

main:
  call f
  mov $13, %rdi
  xor %rax, %rax
  ret

# rsp + 24 -> w w w w w w w w 
# rsp + 16 -> z z z z z z z z 
# rsp + 8  -> y y y y y y y y
# rsp      -> x x x x x x x x

f:
  mov $rsp, rdx
  sub $32, %rsp
  mov %rsp, %rcx # rcx is pointing to our "array" of 32 bytes

  # first write 0 to each byte in the 32-bytes allocated
loop:
  movb $0, (%rcx) # equivalent to x[i] = 0 if x is an array of char
  add $1, %rcx
  com %rdx, %rcx
  jl loop
  add $32, %rsp
  ret