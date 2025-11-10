#include <iostream>

#include <cstddef>

extern std::nullptr_t func(void);

int main(void){

  if(func() == nullptr){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
