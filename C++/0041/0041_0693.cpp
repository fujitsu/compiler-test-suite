#include <iostream>
#include <array>
#include <utility>

template<class T>
auto func(T t) -> decltype( std::tuple_size<T>::value )
{
  return std::tuple_size<T>::value;
}


int main(void){
  using namespace std;

  array<int, 0> a{};
  array<float, 1> b{};
  array<double, 2> c{};
  array<long, 3> d{};
  array<bool, 5> e{};
  array<int*, 10> f{};


  if(func(a) == 0 && func(b) == 1 && 
     func(c) == 2 && func(d) == 3 && 
     func(e) == 5 && func(f) == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
