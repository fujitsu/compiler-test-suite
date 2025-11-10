#include <iostream>
#include <type_traits>
#include <vector>

struct X{};

template<class T>
bool func(void){
  return std::is_arithmetic<T>::value;
}

int main(void){
  auto ret1 = func<signed int>();
  auto ret2 = func< std::vector<int> >();
  auto ret3 = func<X>();
  
  if(ret1 && !ret2 && !ret3){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
