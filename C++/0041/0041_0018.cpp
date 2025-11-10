#include <iostream>
#include <type_traits>

struct X;
X func();

void test(void){
  if( std::is_same< decltype(func()), X >::value ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
}

int main(void){
  test();

  return 0;
}
