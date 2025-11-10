#include <iostream>

int main(void){
  int x = 0;

  bool y = (x++, x-- == 1);

  if(y){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;      
  }

  return 0;
}
