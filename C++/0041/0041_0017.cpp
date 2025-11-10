#include <iostream>

int main(void){

  []() -> void {
    std::cout << "Hello World" << std::endl;
  }();

  return 0;
}
