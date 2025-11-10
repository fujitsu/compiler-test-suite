#include <iostream>

using intP = int*;

int main(void){
  intP x = nullptr;

  if(!x){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
