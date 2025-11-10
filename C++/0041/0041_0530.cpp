#include <iostream>
#include <type_traits>

int main(void){
  if(!std::false_type::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
