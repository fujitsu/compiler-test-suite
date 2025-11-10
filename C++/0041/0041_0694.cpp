#include <iostream>
#include <vector>
#include <array>
#include <valarray>

int main(void){

  std::array<std::vector<int>, 1> a{};
  std::array<std::array<long, 10>, 10> b{};
  std::array<std::valarray<long>, 20> c{};

  auto ret1 = std::tuple_size< decltype(a) >::value;
  auto ret2 = std::tuple_size< decltype(b) >::value;
  auto ret3 = std::tuple_size< decltype(c) >::value;

  if(ret1 == 1 && ret2 == 10 &&
     ret3 == 20){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
