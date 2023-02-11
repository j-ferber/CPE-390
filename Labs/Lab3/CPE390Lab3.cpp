/*
  Author: Justin Ferber
    "I pledge my Honor that I have abided by the Stevens Honor System" - Justin
  Ferber Co-author: Brandon Fox
*/

#include <bitset>
#include <cmath>
#include <iomanip>
#include <iostream>

using namespace std;

int countEvens(int x[], int n) {
  int evens = 0;
  for (int i = 0; i < n; i++) {
    if (x[i] % 2 == 0) {
      evens++;
    }
  }
  return evens;
}

void addToEach(float x[], int n, float delta) {
  for (int i = 0; i < n; i++) {
    x[i] += delta;
  }
}

void range_reverse(int x[], int n, int a, int b) {
  for (int i = 0; i < b - a - 1; i++) {
    int temp = x[a + i];
    x[a + i] = x[b - i];
    x[b - i] = temp;
  }
}

void compact(int x[], int n, int a, int b) {
  int range = 0;
  for (int i = b + 1; i < n; i++) {
    x[a + range] = x[i];
    range++;
  }
  for (int i = range + 1; i < n; i++) {
    x[i] = 0;
  }
}

int main() {
  cout << "Question 1-----------------------------------" << endl;
  int arr1[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int res1 = countEvens(arr1, sizeof(arr1) / sizeof(int));
  cout << "# even numbers: " << res1 << endl;

  cout << "Question 2-----------------------------------" << endl;
  float arr2[] = {1.0, 2.0, 3.0, 4.0};
  float delta = 0.5;
  addToEach(arr2, sizeof(arr2) / sizeof(arr2[0]), delta);
  cout << "array after added delta is:" << endl;
  for (auto a : arr2) {
    cout << a << ", ";
  }
  cout << endl;

  cout << "Question 3-----------------------------------" << endl;
  int arr3[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  range_reverse(
      arr3, sizeof(arr3) / sizeof(int), 1,
      4);  // reverse element between index 1 and 4, -> 1,5,4,3,2,6,7,8,9,10
  cout << "array after range reverse is:" << endl;
  for (auto a : arr3) {
    cout << a << ", ";
  }
  cout << endl;

  cout << "Question 4-----------------------------------" << endl;
  int arr4[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  compact(arr4, sizeof(arr4) / sizeof(int), 1, 4);
  cout << "array after compact is:"
       << endl;  // after compact, array should be 1,6,7,8,9,10,0,0,0,0
  for (auto a : arr4) {
    cout << a << ", ";
  }
  cout << endl;

  return 0;
}