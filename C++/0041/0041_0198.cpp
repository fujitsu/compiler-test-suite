#include "000.h"

enum Color : int {
  Red, Green, Blue
};

void func(Color x){
  if(x == Red){
    std::cout << "ok" << std::endl;
  }
}

int main(void){
  Color test = Red;

  func(test);

  return 0;
}
