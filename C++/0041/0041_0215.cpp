#include <iostream>

struct X{
  int n_ = 10;  

  X(): n_(20){}
};


int main(void){
  X test;

  if(test.n_ == 20){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
