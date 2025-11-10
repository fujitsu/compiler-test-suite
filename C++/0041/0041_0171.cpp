#include <iostream>

[[noreturn]] int func(void){
  throw int{};
  return 0;
}

int main(void){

  try{
    func();
  } catch(...){
    std::cout << "ok" << std::endl;
  }

  return 0;
}
