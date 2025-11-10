#include <iostream>
#include <utility>

struct X{
  X(){
  }
  X(const X& x_){
  }
  X& operator=(const X& x_){
    return *this;
  }
  X(X&& x_){
  }
  X& operator=(X&& x_){
    return *this;
  }
};

int main(void){
  auto ret1 = sizeof( std::declval<X>() );
  
  if(ret1 == sizeof(X)){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
