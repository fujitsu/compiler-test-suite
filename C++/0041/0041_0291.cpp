#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec;

  auto cbeg = vec.cbegin();
  auto cend = vec.cend();

  if(std::is_same<decltype(cbeg), decltype(vec)::const_iterator>::value &&
     std::is_same<decltype(cend), decltype(vec)::const_iterator>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
