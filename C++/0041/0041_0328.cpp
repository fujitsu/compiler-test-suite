#include <iostream>
#include <typeinfo>

int main(void){
  int x = 0;
  auto y = x; 

  x = 1000000000;

  auto z = x; 

  std::cout << "ok" << std::endl;

  return 0;
}
