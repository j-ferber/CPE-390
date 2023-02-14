#include <iostream>
using namespace std;

uint64_t f(uint64_t a, uint64_t b, uint64_t c, uint64_t d){

}

void rect2polar(uint64_t a, uint64_t b){

}

void zero(uint64_t a, uint64_t b) {
  a = 0;
  b = 0;
}

void zerobyref(uint64_t& a, uint64_t& b) {
  a = 0;
  b = 0;
}

int main() { 
  uint64_t X = 99, y = 88;
  cout << X << "," << y << '\n';
  zero(X, y);
  cout << X << "," << y << '\n';
}