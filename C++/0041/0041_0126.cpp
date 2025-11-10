#include <iostream>

struct X{
  X(){
    std::cout << "default ctor" << std::endl;
  }

  X(X const& obj){
    std::cout << "copy ctor" << std::endl;
  }

  X& operator=(X const& obj){
    std::cout << "copy operator" << std::endl;
    return *this;
  }
};

X func(void){
  return X();
}

int main(void){
  const X& test = func();

  return 0;
}
