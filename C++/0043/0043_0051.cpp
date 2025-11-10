#include <iostream>
#include <exception>

int main(void){
  
  std::exception_ptr ep;

  if(ep == nullptr){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  if(!ep){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  try{
    throw std::runtime_error("");
  } catch(...){
    ep = std::current_exception();
    std::cout << "ok" << std::endl;
  }

  return 0;
}
