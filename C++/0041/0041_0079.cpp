#include <iostream>
#include <utility>

template<class T>
void func(T t) noexcept( noexcept( std::declval<T>()))
{ 
  decltype( std::declval<int>() ) x = 0;
  auto y = sizeof( std::declval<int>() ); 
}

int main(void){
  func(10);

  std::cout << "ok" << std::endl;

  return 0;
}
