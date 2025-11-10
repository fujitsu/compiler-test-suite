#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec;

  auto rbeg = vec.rbegin();
  auto rend = vec.rend();

  if(std::is_same<decltype(rbeg), decltype(vec)::reverse_iterator>::value &&
     std::is_same<decltype(rend), decltype(vec)::reverse_iterator>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
 
  return 0;
}
