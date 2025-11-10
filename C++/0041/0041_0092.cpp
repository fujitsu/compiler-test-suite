#include <iostream>
#include <utility>
#include <type_traits>

template<class T>
auto func(T) -> typename std::enable_if< std::is_integral<T>::value >::type {
  std::cout << "This is integral" << std::endl;
}

template<class T>
auto func(T) -> typename std::enable_if< !std::is_integral<T>::value >::type {
  std::cout << "This is not integral" << std::endl;
}

int main(void){
  func(10);
  func("ABC");
  
  return 0;
}
