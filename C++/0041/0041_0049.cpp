#include <iostream>

namespace numbers{
  int x;
  inline namespace in{
	   int x;
  }
}

int main(void){
  numbers::in::x = 10;
  
  if(numbers::in::x == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
