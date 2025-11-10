#include <iostream>
#include <array>

struct X{
  typedef int value_type;
};

template<class T>
auto func(T x) -> decltype( std::tuple_size<T>::value )
{
  return std::tuple_size<T>::value;
}

int main(void){
  std::array<X, 10> x;

  if(func(x) == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
