#include <iostream>
#include <type_traits>
#include <vector>
#include <array>
#include <valarray>
#include <initializer_list>
#include <list>

template<class T>
auto func(void) -> typename std::enable_if<true, T>::type {
  return T{};
}

int main(void){

  auto a = func< std::vector<int> >();
  auto b = func< std::array<int, 5> >();
  auto c = func< std::valarray<int> >();
  auto d = func< std::initializer_list<int> >();
  auto e = func< std::list<int> >();

  if( std::is_same<decltype(a), std::vector<int> >::value &&
      std::is_same<decltype(b), std::array<int, 5> >::value &&
      std::is_same<decltype(c), std::valarray<int> >::value &&
      std::is_same<decltype(d), std::initializer_list<int> >::value &&
      std::is_same<decltype(e), std::list<int> >::value){
    std::cout << "ok" << std::endl;    
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
