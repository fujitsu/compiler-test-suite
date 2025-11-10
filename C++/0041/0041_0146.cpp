#include <iostream>
#include <vector>
#include <algorithm>

int main(void){
  
  
  []() throw() { std::cout << "ok" << std::endl; } ();

  auto noexception = []() noexcept {
    std::cout << "ok" << std::endl;
  };

  noexception();

  []() noexcept(true) {
    std::cout << "ok" << std::endl;
  } ();

  
  []() throw(int) {
    std::cout << "ok" << std::endl;
  }();

  []() noexcept(false){
    std::cout << "ok" << std::endl;
  } ();

  return 0;
}
