#include <iostream>
#include <utility>

int main(void){
  
  {
    int x[10];
    x[0] = 100;

    auto ret = std::move(x);
    if(ret[0] == 100 && std::is_same<decltype(ret), int*>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    int tmp = 120;
    int* x = &tmp;

    auto ret = std::move(x);
    if(*ret == 120 && std::is_same<decltype(ret), int*>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }   
  }

  return 0;
}
