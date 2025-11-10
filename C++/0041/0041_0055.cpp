#include <iostream>

struct Base {
  virtual void func() final {
    std::cout << "ok" << std::endl;
  }
};

struct Derived : Base { 
};

int main(void){
  Base b;
  Derived d;

  b.func();

  return 0;
}
