#include <iostream>

void func1(void) noexcept(true)
{
  std::cout << "ok" << std::endl;
}

void func2(void) noexcept(false)
{
  std::cout << "ok" << std::endl;
}

int main(void){

  func1();
  func2();

  return 0;
}
