/*

clock - master timer for the CPU
TDP - Thermal Design Power
  Today: server TDP = 250 Watts
  All chips contain temp sensors. If they are too hot, they automatically SHUT
DOWN Overclocking Best things to cool computer: air, heat sinks, thermal paste
silver Why don't we use silver? Rusts/tarnishes easily Gold is more expensive,
but does not tarnish ALU Arithmetic Logic Unit add sub imul div mod??? and or
    xor

  add
    add %rbx, % rcs # rcx = rbx + rcx
    add $1, %rcx    #immediate mode add 1 to %rcx
    add (%rbx), %rcx #load memory lovation %rbx and add to rcx
CISC Complex

Example Coding:

  .globl main
main:
  mov $52, %rax # 32 + 16 + 4 = 00110100 0x34
  mov $37, %rbx # 32 + 4 + 1  = 00100101 0x25
  #                             ========

  mov %rbx, %rcx
  and %rax, %rcx #              00100100 = 0x24  C++: x & y

  mov %rbx, %rcx
  or %rax, %rcx #               00110101 = 0x35  C++: x | y

  mov %rbx, %rcx
  xor %rax, %rcx #              00010001 = 0x11  C++: x ^ y

Truth Tables:
        AB        A+B      A B
A  B  A AND B   A OR B   A XOR B   A NAND B   A NOR B
0  0  0         0        0         1          1
0  1  0         1        1         1          0
1  0  0         1        1         1          0
1  1  1         1        1         0          0

  N channel mosfets are more efficient than P=channel
    it is more efficient with current technology to implement NAND or NOR
  SSD Solid State Drive built out of NAND : flash

# suppose register rbx = 10 1010 10xx 100x x010 1xxx
#   and with                     1100 1110 0111 1000

# make all the x bits 1
mov $0xFFFFFFFFFFFFCE78, rdi
and %rdi, %rbx

# suppose register rbx = 10 1010 10xx 100x x010 1xxx
# set all bits marked x to 1
#   or with                      0011 0001 1000 0111
#                                  3   1    8    7
mov 



*/