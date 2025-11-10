#include <iostream>

struct X {
  int n_ = 10;

  X(): n_(100) { }
};

int main(void){
  X a;

  if(a.n_ == 100){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
