#include <iostream>

struct Base{
  virtual void func_a(void) final{
    std::cout << "ok" << std::endl;
  }
};

int main(void){
  Base base;
  base.func_a();

  return 0;
}
