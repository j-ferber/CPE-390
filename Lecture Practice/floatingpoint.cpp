#include <cmath>
#include <iostream>

using namespace std;

double hypot(double x, double y) { return sqrt(x * x + y * y); }

int main() {
  double a, b;
  cin >> a >> b;
  cout << hypot(a, b);
}