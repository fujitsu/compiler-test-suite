#include <iostream>

struct Base {
  virtual void func(){
  }
};

struct Derived : Base {
  void func() override {
    std::cout << "ok" << std::endl;
  }
};

int main(void){
  Base b;
  Derived d;

  b.func();
  d.func();

  return 0;
}
