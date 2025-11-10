#include <iostream>
#include <array>

struct X{
};

int main(void){
  std::array<X, 3> a;

  auto ret = std::is_same< std::tuple_element<0, decltype(a)>::type, X>::value;

  if(ret){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;    
  }

  return 0;
}
