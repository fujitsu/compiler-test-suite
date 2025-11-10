#include <iostream>
#include <utility>

template<class T>
void func(T t) noexcept( noexcept(std::declval<T>()) ){
  decltype( std::declval<int>() ) x = 10;

  auto y = sizeof( std::declval<int>() );

  if(x == 10 
     && std::is_same< decltype(x), int&&>::value 
     && y == sizeof(int) ){
    std::cout << "ok" << std::endl;
  }
}


int main(void){

  func(10);

  return 0;
}
