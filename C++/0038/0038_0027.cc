#include <iostream>

class B1 {
public:
  B1() {}

  ~B1() {}
};

class B2 {
public:
  B2() {}

  ~B2() {}
};

class D : public B1, public B2 {
public:
  D() {}

  ~D() {}
};

int main() {
  D ob;
  std::cout << "OK" << std::endl;
  return 0;
}
