#include <iostream>
#include <exception>

int main(void){
  
  auto ep = std::make_exception_ptr( std::runtime_error("ok") );;

  try{
    std::rethrow_exception(ep);
  } catch(std::runtime_error& e){
    std::cout << e.what() << std::endl;
  }

  return 0;
}
