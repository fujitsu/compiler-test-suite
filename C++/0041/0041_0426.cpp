#include <iostream>
#include <utility>

struct X{
  X(){
    std::cout << "default ctor" << std::endl;
  }
  
  ~X(){
    std::cout << "dtor" << std::endl;
  }

  X(const X& x_){
    std::cout << "copy ctor" << std::endl;
  }

  X& operator=(const X& x_){
    std::cout << "copy operator" << std::endl;
    return *this;
  }

  X(X&& x_){
    std::cout << "ok" << std::endl;
  }

  X& operator=(X&& x_){
    std::cout << "move operator" << std::endl;
    return *this;
  }
};

int main(void){
  auto ret = noexcept( noexcept( std::declval<X>() ));

  if(ret){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
