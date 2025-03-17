#include <iostream>

class BaseA {};

class DerivedA {
  BaseA a;
  int member;
};

int main() {

  std::cout << sizeof(BaseA) << std::endl;

  std::cout << sizeof(DerivedA) << std::endl;

  return 0;
}
