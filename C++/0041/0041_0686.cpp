#include <iostream>
#include <array>

template<class T>
auto func(T x) -> typename std::tuple_element<0, decltype(x)>::type {
  return x.at(0);
}

int main(void){
  std::array<int, 1> a { 0};
  std::array<float, 2> b { 1.0f };
  std::array<double, 3> c { 2.0 };
  std::array<long, 4> d { 3 };
  std::array<bool, 5> e { false };
  std::array<int*, 6> f { nullptr };

  auto ret1 = func(a);
  auto ret2 = func(b);
  auto ret3 = func(c);
  auto ret4 = func(d);
  auto ret5 = func(e);
  auto ret6 = func(f);

  if( std::is_same< decltype(ret1), int>::value && 
      std::is_same< decltype(ret2), float>::value && 
      std::is_same< decltype(ret3), double>::value && 
      std::is_same< decltype(ret4), long>::value && 
      std::is_same< decltype(ret5), bool>::value && 
      std::is_same< decltype(ret6), int*>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
