#include <iostream>
#include <utility>

int main(void){
  auto ret1 = noexcept( noexcept( std::declval<int>()));
  auto ret2 = noexcept( noexcept( std::declval<float>()));
  auto ret3 = noexcept( noexcept( std::declval<double>()));
  auto ret4 = noexcept( noexcept( std::declval<long>()));

  if(ret1 && ret2 && ret3 && ret4){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
    
  return 0;
}
