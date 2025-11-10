#include <iostream>
#include <array>

struct X{
  typedef int value_type;
};

int main(void){
  std::array<X, 10> x;

  if(std::tuple_size<decltype(x)>::value == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
