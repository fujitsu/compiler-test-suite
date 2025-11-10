#include <iostream>
#include <type_traits>

int main(void){
  std::true_type x;

  if(x){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
