#include <iostream>

int x = 100;

struct X{
  int n_ = x;
};

int main(void){
  X test;

  if(test.n_ == x){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
