#include <iostream>
#include <type_traits>

template<class T>
bool func(void){
  return std::is_integral<T>::value;
}

int main(void){
  auto ret1 = func<float>();
  auto ret2 = func<double>();
  auto ret3 = func<long double>();
  
  if(!ret1 && !ret2 && !ret3){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
