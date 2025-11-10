#include <iostream>
#include <initializer_list>
#include <utility>

extern std::initializer_list<int> func(void);

int main(void){
  auto x = func();

  if(std::is_same<decltype(x), std::initializer_list<int>>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
