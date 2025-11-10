#include <iostream>

struct X{
  X() = default;  
  ~X() = default; 

  X(const X&) = default; 
  X(X&&) = default;      
  
  X& operator=(const X&) = default; 
  X& operator=(X&&) = default;      
};

int main(void){
  X a;

  std::cout << "ok" << std::endl;

  return 0;
}
