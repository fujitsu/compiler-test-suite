#include <iostream>
#include <utility>
#include <typeinfo>

int main(void){

  decltype( std::declval<int>() ) a = 10;
  decltype( std::declval<float>() ) b = 2.17f;
  decltype( std::declval<double>() ) c = 3.14;
  decltype( std::declval<long>() ) d = 100;

  if( a == 10    && std::is_same<decltype(a), int&&>::value &&
      b == 2.17f && std::is_same<decltype(b), float&&>::value &&
      c == 3.14  && std::is_same<decltype(c), double&&>::value &&
      d == 100   && std::is_same<decltype(d), long&&>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
