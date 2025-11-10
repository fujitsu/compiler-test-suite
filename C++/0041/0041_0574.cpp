#include <iostream>
#include <utility>
#include <typeinfo>

int main(void){

  auto x = std::move(NULL);

  if(x == NULL && std::is_same<decltype(x), long>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
