#include <iostream>
#include <array>
#include <vector>
#include <valarray>

int main(void){
  std::array<std::vector<int>, 5> a;
  std::array<std::array<int, 3>, 10> b;
  std::array<std::valarray<int>, 15> c;

  auto ret1 = std::is_same<std::tuple_element<0, decltype(a)>::type, std::vector<int>>::value;
  auto ret2 = std::is_same<std::tuple_element<1, decltype(b)>::type, std::array<int, 3>>::value;
  auto ret3 = std::is_same<std::tuple_element<2, decltype(c)>::type, std::valarray<int>>::value;
  
  if(ret1 && ret2 && ret3){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
