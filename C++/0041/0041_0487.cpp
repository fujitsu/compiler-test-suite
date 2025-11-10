#include <iostream>
#include <initializer_list>

int main(void){
  std::initializer_list<int> x = {1, 2, 3, 4, 5};

  if(x.size() == 5){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
