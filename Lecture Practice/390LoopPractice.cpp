#include <iostream>
using namespace std;

int main() {
  for (int i = 0; i <= 50; i++) {
    if (i % 2) {
      cout << i << " ";
    }
  }

  cout << "\n";

  for (int i = 10; i >= 0; i--) {
    cout << i << " ";
  }

  cout << "\n";

  for (int i = 1; i <= 1024; i = i + i) {
    cout << i << " ";
  }

  cout << "\n";

  for (int i = 1; i <= 1024; i = i * 2) {
    cout << i << " ";
  }
}