#include <iostream>

inline namespace numbers{
	 int x;
}

int x;

int main(void){
  numbers::x = 10;

  if(numbers::x == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
