#include <iostream>

struct X{
  int foo(int){
    return 10;
  }
};

int getN(){
  return 0;
}

X getX(){
  return X{};
}

int main(void){
  int n = getX().foo( getN() );

  if(n == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;    
  }

  return 0;
}
