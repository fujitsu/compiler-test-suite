#include <iostream>
#include <type_traits>

int main(void){
  auto ret1 = std::is_same< std::remove_volatile<int*>::type, int*>::value;
  auto ret2 = std::is_same< std::remove_volatile<int volatile*>::type, int volatile*>::value;
  auto ret3 = std::is_same< std::remove_volatile<int* volatile>::type, int* >::value;
  auto ret4 = std::is_same< std::remove_volatile<int volatile* volatile>::type, int volatile*>::value;

  if(ret1 && ret2 && ret3 && ret4){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
