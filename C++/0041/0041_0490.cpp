#include <iostream>
#include <initializer_list>
#include <iterator>

int main(void){
  std::initializer_list<int> vec { 3, 2, 1 };

  auto ret1 = std::is_same< decltype(std::begin(vec)), decltype(vec.begin())>::value;
  auto ret2 = std::is_same< decltype(std::end(vec)), decltype(vec.end())>::value;

  if(ret1 && ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
