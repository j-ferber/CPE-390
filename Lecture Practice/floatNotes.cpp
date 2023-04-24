#include <cmath>
#include <iomanip>
#include <iostream>

using namespace std;

int main() {
  double a = 1 / 2;                          // a = 0.0
  double b = 3 / 4 + 5 / 4 + 7 / 4 + 9 / 4;  // b = 4
  double sum = 0;
  for (int i = 0; i < 10; i++) {
    sum += .1;
  }
  bool c = sum == 1.0;
  cout << c << '\n';
}