#include <iostream>
#include <type_traits>

enum A {};
enum B : int {};
enum class C {};
enum class D : int {};

template<class T>
auto func(void) -> typename std::enable_if<true, T>::type {
  return T{};
}

int main(void){

  auto a = func<A>();
  auto b = func<B>();
  auto c = func<C>();
  auto d = func<D>();

  if( std::is_same<decltype(a), A>::value &&
      std::is_same<decltype(b), B>::value &&
      std::is_same<decltype(c), C>::value &&
      std::is_same<decltype(d), D>::value){
    std::cout << "ok" << std::endl;    
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
