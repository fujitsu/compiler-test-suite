#include <iostream>

struct X{
  int n_ = 10;
};

int main(void){
  X a;

  if(a.n_ == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;    
  }

  return 0;
}
