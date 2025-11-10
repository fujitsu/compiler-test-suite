#include <iostream>
#include <exception>

int main(void){
  
  std::exception_ptr ep;

  try{
    throw std::runtime_error("");
  } catch(...){
    ep = std::current_exception();
    std::cout << "ok" << std::endl;
  }

  return 0;
}
