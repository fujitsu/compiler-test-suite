#include <iostream>

struct X{
  int data_[3];
  
  X(): data_{1, 2, 3} { }

};


int main(void){

  X x;

  if( x.data_[0] == 1 ){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
