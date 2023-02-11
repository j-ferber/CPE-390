#include <iomanip>
#include <iostream>

using namespace std;

/*

*/

int main() {
  cout << setprecision(8);
  for (float i = 1; i <= 10; i += .1) {
    cout << i << ' ';
  }
  cout << '\n';
  float t1 = 70.001;
  float t2 = 70.002;
  float dt = t2 - t1;

  long double x;
}