#include <iostream>

struct Test{
  int val_;
  
  explicit operator int() const {
    return 100;
  }
};


int main(void){
  

  int val1 = static_cast<int>( Test() );
  

  if(val1 == 100){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }  

  return 0;
}
