#include <iostream>

struct Base{
  virtual void func_a(void){
    std::cout << "base" << std::endl;
  }
};


struct Derived : Base{
  void func_a(void) override{
    std::cout << "ok" << std::endl;
  }
};

int main(void){
  Base* test = new Derived;

  test->func_a();

  delete test;

  return 0;
}
