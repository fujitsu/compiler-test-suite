#include <iostream>
#include <type_traits>

int main(void){
  auto ret1 = std::is_same< std::remove_volatile<int>::type, int>::value;
  auto ret2 = std::is_same< std::remove_volatile<const int>::type, const int>::value;
  auto ret3 = std::is_same< std::remove_volatile<volatile int>::type, int>::value;
  auto ret4 = std::is_same< std::remove_volatile<const volatile int>::type, const int>::value;

  if(ret1 && ret2 && ret3 && ret4){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
