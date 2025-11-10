#include <iostream>
#include <exception>

void func(void){
  std::cout << "ok" << std::endl;  
  exit(0);
}

int main(void){
  std::set_terminate( func );
  
  try{
    int x;
    throw x;
  } catch(std::bad_alloc x){
    std::cout << "ng" << std::endl;
  }

  return 0;
}
