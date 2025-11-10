#include <iostream>
#include <initializer_list>

int main(void){
  std::initializer_list<int> x{1};

  if(x.size() == 1){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
