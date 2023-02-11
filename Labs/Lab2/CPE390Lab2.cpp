#include <bitset>
#include <cmath>
#include <iomanip>
#include <iostream>

using namespace std;

/*
  Author: Justin Ferber

  Co-Author: Brandon Fox

  "I pledge my Honor that I have abided by the Stevens Honor System"
    -Justin Ferber
*/

// Part 1 Question 1
int gcd(int a, int b) {
  if (a > b) {
    int temp = a;
    a = b;
    b = temp;
  }

  int fgcd;
  for (int i = 1; i < b; i++) {
    if ((a % i == 0) && (b % i == 0)) {
      fgcd = i;
    }
  }
  return fgcd;
}

// Part 1 Question 2
bool isPrime(int a) {
  bool prime = true;
  if (a == 1 || a == 0) {
    return false;
  }
  for (int i = 2; i < a; i++) {
    if (a % i == 0) {
      prime = false;
    }
  }
  return prime;
}

// Part 1 Question 3
int countPrimes(int a, int b) {
  int tprime = 0;
  for (int i = a; i <= b; i++) {
    if (isPrime(i) == 1) {
      tprime++;
    }
  }
  return tprime;
}

// Part 2 Question 1
float sum_forward(int n) {
  float x;
  float sum = 0;
  for (float i = 1; i <= n; i++) {
    x = 1.0 / i;
    sum += x;
  }
  return sum;
}

// Part 2 Question 2
float sum_backward(int n) {
  float x;
  float sum = 0;
  for (float i = n; i >= 1; i--) {
    x = 1.0 / i;
    sum += x;
  }
  return sum;
}

// Part 2 Question 3
float hypot(int a, int b) {
  float hypo1 = pow(a, 2);
  float hypo2 = pow(b, 2);
  float hypof = sqrt(hypo1 + hypo2);
  return hypof;
}

// Part 3 Question 1
float mean(float x[], int n) {
  float sum = 0;
  for (int i = 0; i < n; i++) {
    sum += x[i];
  }
  return sum / n;
}

// Part 3 Question 2
void double_each(int a[], int n) {
  for (int i = 0; i < n; i++) {
    a[i] *= 2;
  }
}

// Part 3 Question 3
int prod(int x[], int n) {
  int prod = 1;
  for (int i = 0; i < n; i++) {
    prod *= x[i];
  }
  return prod;
}

int main() {
  //------------------------integer part
  cout << "part 1 output:" << endl;
  cout << "gcd(12, 18)=" << gcd(12, 18) << endl;
  cout << "gcd(1025, 3025)=" << gcd(1025, 3025) << endl;
  cout << "isPrime(5)=" << isPrime(5) << endl;
  cout << "isPrime(9)=" << isPrime(9) << endl;
  cout << "isPrime(1001)=" << isPrime(1001) << endl;
  cout << "isPrime(2601)=" << isPrime(2601) << endl;
  cout << "isPrime(1013)=" << isPrime(1013) << endl;
  cout << "countPrimes(1,100): " << countPrimes(1, 100) << endl;
  cout << "countPrimes(1,10000): " << countPrimes(1, 10000) << endl;

  //------------------------floating point number part
  cout << "part 2 output:" << endl;
  float ans_1 = sum_forward(100);
  float ans_2 = sum_backward(100);
  cout << setprecision(8) << ans_1 << endl;
  cout << setprecision(8) << ans_2 << endl;
  cout << "hypot(3,4)=" << hypot(3, 4) << endl;  // should print 5
  cout << "hypot(4,5)=" << hypot(4, 5) << endl;

  //------------------------array part
  cout << "part 3 output:" << endl;

  float x[] = {10, 20, 30, 40, 50, 60};
  int n = sizeof(x) / sizeof(float);
  cout << mean(x, n) << endl;  // should print 35
  float y[] = {1.0, 2.0, 3.0, 4.0};
  cout << mean(y, sizeof(y) / sizeof(float)) << endl;  // should print 2.5

  int z[] = {10, 20, 30, 40, 50, 60};
  int z_len = sizeof(z) / sizeof(int);
  double_each(z, z_len);
  for (int i = 0; i < z_len; i++) {
    cout << z[i] << ",";
  }
  cout << endl;

  int a[] = {3, 4, 1, 2, -2};
  cout << prod(a, sizeof(a) / sizeof(int)) << endl;
  int b[] = {2, 4, 8, -2, -4};
  cout << prod(b, sizeof(b) / sizeof(int)) << endl;

  return 0;
}