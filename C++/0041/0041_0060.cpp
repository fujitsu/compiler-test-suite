#include <iostream>

struct X{
  int foo(){
    std::cout << "ok" << std::endl;
    return 10;
  }
};

X getX(){
  return X{};
}

int main(void){
  int n = getX().foo();

  return 0;
}
