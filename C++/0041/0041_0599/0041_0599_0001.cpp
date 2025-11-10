#include <iostream>

#include <utility>
#include <type_traits>

bool func(void);

int main(void){

  auto ret = func();

  if(ret){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
