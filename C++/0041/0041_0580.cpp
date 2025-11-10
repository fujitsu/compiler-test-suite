#include <iostream>
#include <utility>

int main(void){
  
  {
    int x = 10;
    auto ret = std::move(x);
    if(ret == 10 && std::is_same<decltype(ret), int>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    float x = 2.17f;
    auto ret = std::move(x);
    if(ret == 2.17f && std::is_same<decltype(ret), float>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    double x = 3.14;
    auto ret = std::move(x);
    if(ret == 3.14 && std::is_same<decltype(ret), double>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    long x = 10;
    auto ret = std::move(x);
    if(ret == 10 && std::is_same<decltype(ret), long>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}
