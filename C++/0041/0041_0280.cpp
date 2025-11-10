#include <iostream>
#include <array>

int main(void){
  std::array< std::array<int, 3>, 3> x;

  auto ret = std::is_same< decltype(x), std::array< std::array<int, 3>, 3> >::value;

  if(ret){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
