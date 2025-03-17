#include <iostream>

int &f();
int x;

int main() {
  f() = 100;
  if (x == 100) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}

int &f() { return x; }
