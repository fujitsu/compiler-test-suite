#include <iostream>

template<class T>
constexpr T abs(T x){
  return (x < 0) ? -x : x;
}


int main(void){

  constexpr int x = -1;
  auto res = abs(x);

  std::cout  << res << std::endl;

  return 0;
}
