#include <iostream>
#include <cstddef>

int main(void){
  std::nullptr_t x = nullptr; 

  try {
    throw x;
  } catch(std::nullptr_t& x){
    std::cout << "ok" << std::endl;
  }

  return 0;
}
