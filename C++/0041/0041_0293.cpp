#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec;

  auto crbeg = vec.crbegin();
  auto crend = vec.crend();

  if(std::is_same<decltype(crbeg), decltype(vec)::const_reverse_iterator>::value &&
     std::is_same<decltype(crend), decltype(vec)::const_reverse_iterator>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
