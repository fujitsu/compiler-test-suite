#include <iostream>

struct A {
  virtual void func() = 0;
};

struct B : A {
  virtual void func() final{
    std::cout << "ok" << std::endl;
  }
};

struct C : B { };

int main(void){
  B b;

  b.func();

  return 0;
}
