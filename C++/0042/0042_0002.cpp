#include <iostream>

[[ noreturn ]] void func(void){
  throw 0;
}

int main(void){

  try{
    func();
  } catch(...){
    std::cout << "ok" << std::endl;
  }

  return 0;
}
