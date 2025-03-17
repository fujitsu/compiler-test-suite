#include <iostream>

template <class T> class Base {
public:
  virtual void print() { static_cast<T &>(*this).derived_print(); }
};

class Derived1 : public Base<Derived1> {
public:
  void derived_print() { std::cout << "derived1" << std::endl; }
};

class Derived2 : public Base<Derived2> {
public:
  void derived_print() { std::cout << "derived2" << std::endl; }
};

int main() {
  Derived1 d1;
  Derived2 d2;

  d1.print();
  d2.print();

  return 0;
}
