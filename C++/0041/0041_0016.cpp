#include <iostream>

int main(void){
  auto func1 = []() noexcept { 
    std::cout << "ok" << std::endl;
  };

  auto func2 = []() throw(int) {
    std::cout << "ok" << std::endl;
  };

  func1();
  func2();

  return 0;
}
