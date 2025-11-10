#include <iostream>
#include <exception>

int main(void){
  
  std::exception_ptr ep;

  try {
    try{
      throw std::runtime_error("ok");
    } catch(...){
      ep = std::current_exception();
      std::rethrow_exception(ep);
    }
  }  catch(std::runtime_error& e){
    std::cout << e.what() << std::endl;
  }

  return 0;
}
