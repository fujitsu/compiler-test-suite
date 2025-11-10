#include <iostream>
#include <cstddef>

void func(void){
  throw nullptr;
}

int main(void){
  try{
    func();
  } catch(std::nullptr_t x){
    std::cout << "ok" << std::endl;
  } catch(...){
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
