#include <iostream>
#include <type_traits>

struct X {};

template<class T>
auto func(void) -> typename std::enable_if<true, T>::type {
  return T{};
}

int main(void){

  auto a = func<X>();

  if( std::is_same<decltype(a), X>::value){
    std::cout << "ok" << std::endl;    
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
