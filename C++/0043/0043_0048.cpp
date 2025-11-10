#include <iostream>
#include <exception>

int main(void){
  
  try{
    try{
      try{
	throw 1;
      } catch(int& x){
	std::cout << "ok" << std::endl;
	throw std::nested_exception{};
      }
    } catch(std::nested_exception& e){
      std::cout << "ok" << std::endl;
      e.rethrow_nested();
    } 
  } catch(int& x){
    std::cout << "ok" << std::endl;
  } catch(...){
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
