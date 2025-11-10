#include <iostream>

[[carries_dependency]] int func([[carries_dependency]] int x, [[carries_dependency]] int y){
  return x + y;
}


int main(void){

  std::cout << "ok" << std::endl;

  return 0;
}
