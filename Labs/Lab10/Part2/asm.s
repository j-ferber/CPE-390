
	.globl _Z3f1ay
_Z3f1ay:	
	# write a function that counts from 0 to n (which is in %rdi for Mac, %rcx for Windows)
  xor %rax, %rax
  mov $0, %rdx
  
  loopZ3f1ay:
    add $1, %rdx
    cmp %rdx, %rcx
    jg loopZ3f1ay

	ret

	.globl _Z3f1by
_Z3f1by:
	# write a function that counts from n down to 1
  xor %rax, %rax
  mov $1, %rdx
  
  loopZ3f1by:
    sub $1, %rcx
    cmp %rcx, %rdx
    jl loopZ3f1by

	ret

	.globl _Z3f1cy
_Z3f1cy:
	# Write a function that counts from n down to 1 without using the compare (sub will do!)
  xor %rax, %rax
  mov $1, %rax
  
  loopZ3f1cy:
    sub $1, %rcx
    jg loopZ3f1cy
  
  add $1, %rcx

	ret

	.globl _Z3f2ay
_Z3f2ay:
	# write a function that sums the numbers from 1 to n (which is in %rdi for Mac, %rcx for Windows)
	# answers should be returned in %rax
  xor %rax, %rax
  mov $0, %rdx
  mov $0, %r8

  loopZ3f2ay:
    add $1, %rdx
    add %rdx, %r8
    cmp %rdx, %rcx
    jg loopZ3f2ay
    mov %r8, %rax

	ret

	.globl _Z3f2by
_Z3f2by:
	# write a function that computes n factorial (products 1 to n)
  xor %rax, %rax
  mov $0, %rdx
  mov $1, %r8

  loopZ3f2by:
    add $1, %rdx
    imul %rdx, %r8
    cmp %rdx, %rcx
    jg loopZ3f2ay
    mov %r8, %rax

	ret


