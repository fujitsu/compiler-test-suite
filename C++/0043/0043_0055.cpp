#include <iostream>
#include <exception>

int main(void){  
  try{
    try {
      try{
	throw 1;
      } catch(...){
	std::throw_with_nested( std::runtime_error("ok1") );
      }
    } catch(std::runtime_error& e){
      std::cout << e.what() << std::endl;
      std::rethrow_if_nested(e);
    }
  } catch(int& e){
    if(e == 1){
      std::cout << "ok2" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}
