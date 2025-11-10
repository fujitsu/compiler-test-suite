#include <iostream>
#include <array>

struct X{
};

template<class T>
auto func(T x) -> typename std::tuple_element<0, decltype(x)>::type {
  return X();
}

int main(void){
  std::array<X, 3> a;

  auto ret = func(a);

  if( std::is_same< decltype(ret), X>::value ){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;    
  }

  return 0;
}
