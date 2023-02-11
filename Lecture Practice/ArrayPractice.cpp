#include <cmath>
#include <iomanip>
#include <iostream>

using namespace std;

/*
int main() {
  uint8_t a = 255;
  uint32_t b = 4200000000U;
  float f = 1.2345678f;
  f = 12.345678f;
  f = 1.2345678e+38f;


  sign = 1 0/1
  exponent = 8 bits where is the binary place
  mantissa = 24 bits digits of the number
    1xxxxxxxxxxxxxxxxxxxxxxx
  int8_t a = -128...127



}
*/

int main() {
  int a;       // 32 bits on my machine 4 bytes
  uint64_t b;  // 64 bit 8 bytes
  float c;     // 32 bits 4 bytes
  double d;    // 64 bits 8 bytes

  int e[10];      // single contiguous block of 10 integers
  double f[100];  // 100 * 8 = 800 bytes

  uint32_t x[3][4];    // 3*4*4 = 48
  uint32_t y[100][5];  // 2000
}