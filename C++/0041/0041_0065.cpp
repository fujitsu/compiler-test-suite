#include <iostream>

int x = 2;

int& left(){
  return ++x;
}

int right(){
  return x*2;
}

int main(void){
  int y = ( left() = right() );

  std::cout << "ok" << std::endl;
  
  return 0;
}
