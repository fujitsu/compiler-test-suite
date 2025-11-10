#include <iostream>
#include <utility>

int main(void){

  auto x = std::move("hello");

  if(x == "hello" && std::is_same<decltype(x), const char*>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
