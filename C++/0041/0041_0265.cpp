#include <iostream>

thread_local int x;
static thread_local int y = 100;

int main(void){
  x = 10;

  if(x == 10 && y == 100){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
