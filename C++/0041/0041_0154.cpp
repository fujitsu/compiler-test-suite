#include <iostream>
#include <initializer_list>

auto func() -> std::initializer_list<int>
{
  return {1, 2, 3};
}

int main(void){

  auto x = func();

  std::cout << "ok" << std::endl;

  return 0;
}
