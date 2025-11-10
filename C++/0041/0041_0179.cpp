
#include <iostream>

inline namespace cfe{
  int x;
}

int main(void){

  cfe::x = 10; 
  x = 20;      

  std::cout << "ok" << std::endl;
  
  return 0;
}
