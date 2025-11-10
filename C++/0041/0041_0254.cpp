#include <iostream>

struct X{
  int foo(void){
    std::cout << "k" << std::endl;
    return 0;
  }
};

X getX(void){
  std::cout << "o";
  return X{};
}

int main(void){

  auto n = getX().foo();

  return 0;
}
