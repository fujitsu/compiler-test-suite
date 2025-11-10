#include <iostream>
#include <utility>

int main(void){
  
  {
    int const x = 10;
    auto ret = std::move(x);
    if(ret == 10 && std::is_same<decltype(ret), int>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    int volatile x = 10;
    auto ret = std::move(x);
    if(ret == 10 && std::is_same<decltype(ret), int>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }
  
  
  {
    int const volatile x = 10;
    auto ret = std::move(x);
    if(ret == 10 && std::is_same<decltype(ret), int>::value){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}
