#include <iostream>
#include <array>


int main(void){
  std::array<int, 3> vec( {1, 2, 3} );

  
  for(int x : vec){
    std::cout << x << std::endl;
  }

  return 0;
}
