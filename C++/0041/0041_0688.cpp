#include <iostream>
#include <array>
#include <vector>
#include <valarray>

template<class T>
auto func(T x) -> typename std::tuple_element<0, decltype(x)>::type {
  return x.at(0);
}

int main(void){
  std::array<std::vector<int>, 1> a;
  std::array<std::array<int,3>, 2> b{};
  std::array<std::valarray<int>, 3> c;

  auto ret1 = func(a);
  auto ret2 = func(b);
  auto ret3 = func(c);

  if( std::is_same< decltype(ret1), std::vector<int>>::value && 
      std::is_same< decltype(ret2), std::array<int,3>>::value && 
      std::is_same< decltype(ret3), std::valarray<int>>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
