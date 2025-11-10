#include <iostream>
#include <initializer_list>

int main(void){
  std::initializer_list<int> x;

  if(x.size() == 0){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
