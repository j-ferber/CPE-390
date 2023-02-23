  .globl main

main:
  call countup
  call countdown
  ret

  # rcx = the number of times to count
  # count from 1 to rcx
  countup:
    push %rsi
    xor %rsi, %rsi
    cmp $0, %rcx
    jle countupout
  countuploop:
    add $1, %rsi
    cmp %rcx, %rsi
    jle countuploop
  countupout:
    pop %rsi
    ret
  # rcx = the number of times to count
  # count from 1 to rcx
  countdown:
    sub $1, rcx
    jnz countdown
    ret
  
  # anything AND 0 = 0
  # anything AND 1 = anything

  # rcx = a number
  # rdx = mask
  # zero out any bits for which mask = 0
  mask1:
    mov %rdx, %rax
    and %rcx, %rax
    ret

  # rcx = a number
  # rdx = mask
  # 1 any bits for which mask = 1
  mask2:
    mov %rdx, %rax
    or %rcx, %rax
    ret

  # rcx = a number
  # rdx = mask
  # toggle any bits for which mask = 1
  mask3:
    mov %rcx, %rax
    xor %rdx, %rax
    ret