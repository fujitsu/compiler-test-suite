#include <iostream>
#include <array>

int main(void){

  std::array<int, 0> b;
  std::array<int, 1> c;
  std::array<int, 10> d;
  
  if( b.max_size() == 0 && c.max_size() == 1 && d.max_size() == 10){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;    
  }
     
  return 0;
}
