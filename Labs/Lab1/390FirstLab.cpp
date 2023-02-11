/*
    Author: Justin Ferber
    I pledge my Honor that I have abided by the Stevens Honor System - Justin
   Ferber
*/

#include <iostream>
using namespace std;

double product(const int a[], int n) {
  int x = 1;
  for (int i = 0; i < n; i++) {
    x *= a[i];
  }
  return x;
}
int main() {
  int a[] = {5, 3, 1, 9};
  double z = product(a, 4);
  cout << z << '\n';
}