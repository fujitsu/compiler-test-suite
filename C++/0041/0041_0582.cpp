#include <iostream>
#include <utility>
#include <complex.h>

enum ENUM{
  ZERO, ONE, TWO
};

int main(void){
  
  {
    bool x = true;
    auto ret = std::move(x);
    if(ret == true && std::is_same<decltype(ret), bool>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    unsigned x = 10;
    auto ret = std::move(x);
    if(ret == 10 && std::is_same<decltype(ret), unsigned>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    ENUM x = ZERO;
    auto ret = std::move(x);
    if(ret == ZERO && std::is_same<decltype(ret), ENUM>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }
  
  return 0;
}
