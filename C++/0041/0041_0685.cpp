#include <iostream>
#include <array>

int main(void){
  std::array<int, 1> a;
  std::array<float, 2> b;
  std::array<double, 3> c;
  std::array<long, 4> d;
  std::array<bool, 5> e;
  std::array<int*, 6> f;

  auto ret1 = std::is_same<std::tuple_element<0, decltype(a)>::type, int>::value;
  auto ret2 = std::is_same<std::tuple_element<1, decltype(b)>::type, float>::value;
  auto ret3 = std::is_same<std::tuple_element<2, decltype(c)>::type, double>::value;
  auto ret4 = std::is_same<std::tuple_element<3, decltype(d)>::type, long>::value;
  auto ret5 = std::is_same<std::tuple_element<4, decltype(e)>::type, bool>::value;
  auto ret6 = std::is_same<std::tuple_element<5, decltype(f)>::type, int*>::value;
  
  if(ret1 && ret2 && ret3 &&
     ret4 && ret5 && ret6){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
