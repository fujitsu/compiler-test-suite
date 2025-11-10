#include <iostream>

struct X{
  int val_;

  explicit operator int(){
    return val_;
  }
};

int main(void){
  X obj;

  int val_int = static_cast<int>( obj );

  

  std::cout << "ok" << std::endl;

  return 0;
}
