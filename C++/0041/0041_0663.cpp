#include <iostream>
#include <type_traits>

int main(void){
  auto ret1 = std::is_same< std::remove_volatile<int&>::type, int&>::value;
  auto ret2 = std::is_same< std::remove_volatile<int const volatile&>::type, int const volatile&>::value;
  
  

  if(ret1 && ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
