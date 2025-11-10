
#include <iostream>

inline namespace cfe{
  int x;
}

int main(void){
  int x;

  cfe::x = 10;
  x = 20;     
 
  if(cfe::x == 10 && x == 20){
    std::cout << "ok" << std::endl;
  }
  
  return 0;
}
