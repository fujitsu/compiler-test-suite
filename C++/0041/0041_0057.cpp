#include <iostream>

struct X{
  X(){
  }
  
  ~X(){
    std::cout << "ok" << std::endl;
  }

  X(const X& x){
  }

  X(X&& x){
  }

  X& operator=(const X& x){
    return *this;
  }

  X& operator=(X&& x){
    return *this;
  }
};

int main(void){
  X tmp;

  return 0;
}
