#include <iostream>

struct X{
  int foo(int n){
    std::cout << "3" << std::endl;
    return 0;
  }
};

int getN(void){
  std::cout << "2" << std::endl;
  return 0;
}

X getX(void){
  std::cout << "1" << std::endl;
  return X{};
}

int main(void){

  auto n = getX().foo( getN() );
  
  
  
  
  
  return 0;
}
