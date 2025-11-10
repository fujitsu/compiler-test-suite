#include <iostream>
#include <vector>
#include <array>
#include <valarray>

template<class T>
auto func(T t) -> decltype( std::tuple_size<T>::value ){
  return std::tuple_size<T>::value;
}


int main(void){
  std::array<std::vector<int>, 1> a;
  std::array<std::array<long, 10>, 10> b;
  std::array<std::valarray<long>, 20> c;

  auto ret1 = func(a);
  auto ret2 = func(b);
  auto ret3 = func(c);

  if(ret1 == 1 && ret2 == 10 &&
     ret3 == 20){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
