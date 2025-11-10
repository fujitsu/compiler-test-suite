#include <iostream>

#include <type_traits>
#include <array>

extern bool func(void);

int main(void){

  if(func()){
    std::cout << "ok" << std::endl;
  }

  return 0;
}
