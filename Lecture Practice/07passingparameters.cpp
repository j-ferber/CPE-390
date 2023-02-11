#include <bitset>
#include <cmath>
#include <iomanip>
#include <iostream>
using namespace std;

//%ecx    %edx    %esi    %edi
int f(int a, int b) {}

//%rcx    %rdx
uint64_t g(uint64_t a, uint64_t b) {}

void rect2polar(double x, double y, double& r, double& theta) {
  r = sqrt(x * x + y * y);
  theta = atan2(y, x);
}

int main() {
  int y = f(2, 3);
  uint64_t z = g(5, 6);
  double x = 3, y = 4;
  double r, theta;
}