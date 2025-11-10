#include <iostream>

int main(void){
  
  auto func1 = []() -> void { 
    std::cout << "this is lambda" << std::endl;
  };

  func1();


  
  auto func2 = [](){ 
    std::cout << "this is lambda" << std::endl;
  };

  func2();

  return 0;
}
