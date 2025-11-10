#include <iostream>

int main(void){
  {
    auto a = 1, b = 2;
  }

  {
    auto a = 1, *b = &a;
  }

  std::cout << "ok" << std::endl;

  return 0;
}
