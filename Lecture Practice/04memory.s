.globl main

# %rcx is the location of an array
# %rdx is the number of elements in the array

writemem:
xor %r8, %r8

writememloop:
  movq $0, (%rcx)
  add $8, %rcxsub 
  sub $1, %rdx
  jne writememloop:
  ret