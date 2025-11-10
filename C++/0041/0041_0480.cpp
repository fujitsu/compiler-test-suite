#include <iostream>
#include <initializer_list>
#include <initializer_list>

int main(void){
  std::initializer_list<int> vec;

  if(std::is_same<decltype(vec), std::initializer_list<int>>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
