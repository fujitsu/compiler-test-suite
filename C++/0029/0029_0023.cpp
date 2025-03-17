#include <iostream>

class BaseA {};
class BaseB {};

class DerivedA {
  BaseA a;
  int member;
};

class DerivedAB {
  BaseA a;
  BaseB b;
  int member;
};

class DerivedAWithNoMember {
  BaseA a;
};

class DerivedABWithNoMember {
  BaseA a;
  BaseB b;
};

int main() {

  std::cout << sizeof(BaseA) << std::endl;

  std::cout << sizeof(BaseB) << std::endl;

  std::cout << sizeof(DerivedA) << std::endl;

  std::cout << sizeof(DerivedAB) << std::endl;

  std::cout << sizeof(DerivedAWithNoMember) << std::endl;

  std::cout << sizeof(DerivedABWithNoMember) << std::endl;

  return 0;
}
