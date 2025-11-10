#include <iostream>

int n = 100;

struct func{
  int x = n;
};

int main(void){
  n = 1000;

  func x;

  if(x.x == 1000){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
