#include <iostream>

auto func = []() -> void {
  std::cout << "Hello World" << std::endl;
};

int main(void){
  func();

  []{};

  return 0;
}
