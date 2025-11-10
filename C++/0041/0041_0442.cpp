#include <iostream>
#include <type_traits>

template<class T>
auto func(void) -> typename std::enable_if<true, T>::type {
  return 0;
}

int main(void){

  auto a = func<int>();
  auto b = func<float>();
  auto c = func<double>();
  auto d = func<long>();
  auto e = func<bool>();
  auto f = func<int*>();

  if( std::is_same<decltype(a), int>::value &&
      std::is_same<decltype(b), float>::value &&
      std::is_same<decltype(c), double>::value &&
      std::is_same<decltype(d), long>::value &&
      std::is_same<decltype(e), bool>::value &&
      std::is_same<decltype(f), int*>::value){
    std::cout << "ok" << std::endl;    
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
