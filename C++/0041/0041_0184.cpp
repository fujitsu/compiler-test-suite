
#include <iostream>

inline namespace cfe{
  int x;
  inline namespace in{
     int x;
  }
}

int main(void){

  cfe::in::x = 10;

  std::cout << "ok" << std::endl;
  
  return 0;
}
