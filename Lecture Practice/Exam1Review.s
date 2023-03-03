.globl main

main:

  # Arithmetic
  add %rax, %rbx # rbx = rbx + rax
  lea (%rax, %rbx), %rcx # rcx = rax + rbx
  lea 16(%rax, %rbx, 8), %rcx # rcx = 16 + rax + rbx(8)
  sub %rax, %rbx # rbx = rbx - rax
  imul %rax, %rbx # rbx = rbx * rax (signed?)
  div %rcx # rax = rdx:rax / rcx
  
  # Boolean
  and %rbx, %rsi # rsi = rsi AND rbx -> rsi & rbx (C++)
  or %rbx, %rsi # rsi = rsi OR rbx -> rbx | rsi (C++)
  not %rbx # rbx = NOT rbx
  xor %rax, %rax # rax = rax XOR rax (zero) -> rax ^ rax (C++)

  # Bit Shifting
  shl $5, %rsi # << rsi <<= 5 (Multiply by 32) -> uint64_t x = 4; x <<= 3; x = 32
  shr $3, %rdi # rdi >>= 3 (Divide by 8)
  shl %rax, %rsi # rsi <<= rax

  # Rotate 
  rol $4, %rax # rotate rax left by 4 bits
  ror $3, %rbx # rotate rbx right by 3 bits

  # Branching
  mov $100, %rcx

  loop:
    sub $1, %rcx
    jnz loop

    cmp $100, %rax
    # jz   rax == 100
    # jnz  rax != 100
    # jl   rax <  100
    # jge  rax >= 100

/*

  3 bit computer:
        unsigned  (1+7 = 0 -> 0 - 1 = 7)    signed (2s-complement)
  000   0                                   0
  001   1                                   1
  010   2                                   2
  011   3                                   3
  100   4                                   -4
  101   5                                   -3
  110   6                                   -2
  111   7                                   -1

  unsigned:
    101 >> 1 = 010 = 2
    010 << 1 = 100 = 4
    010 << 5 = 000 = overflow
    1010 = 8 + 2 = 10

  2s complement
    ** 1010 = 0101 + 0001 = 0110 = 6 -> -6
      Invert every bit
      add 1
    1111111100100101 = 0000000011011010 + 0000000000000001 = 0000000011011011 = -219
    (lost) 0000000000000011 = 1111111111111100 + 1111111111111101 >> 1 = 


  Rotate practice:
    mov $17, %rax # 0000000000010001
    ror $4, %rax #  0001000000000001
    
    mov $17, %rax # 0000000000010001
    shr $4, %rax #  0000000000000001
    
    mov $17, %rax # 0000000000010001
    rol $6, %rax #  0000010001000000

    mov $17, %rax # 0000000000010001
    shl $6, %rax #  


  int main(){
    int a = 3 + 4; a = 7
    uint64_t b = 3 - 4; b = 255
    uint64_t c = 5*6; c = 30
    uint64_t d = 1000000 * 1000000;
    uint64_t e = 7/2;
    uint64_t f = 7%2;
    int64_t g = -f;
    uint64_t = h = c << 4;

    int64_t i = -3;
    i >>= 1;

*/