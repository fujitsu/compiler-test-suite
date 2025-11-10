#include <iostream>


int main(void){
  decltype(0) a1; 
  decltype(0.0) a2; 
  
  int x; 
  float y;
  decltype(x) b1; 
  decltype(y) b2; 
  
  std::cout << "ok" << std::endl;

  return 0;
}
