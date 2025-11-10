#include <iostream>
#include <type_traits>

int main(void){
  auto ret1 = std::is_same< std::remove_const<int*>::type, int*>::value;
  auto ret2 = std::is_same< std::remove_const<int const volatile*>::type, int const volatile*>::value;
  auto ret3 = std::is_same< std::remove_const<int* const volatile>::type, int* volatile>::value;
  auto ret4 = std::is_same< std::remove_const<int const volatile* const volatile>::type, int const volatile* volatile>::value;

  if(ret1 && ret2 && ret3 && ret4){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
