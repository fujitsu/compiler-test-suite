#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec{1, 2, 3};
  
  
  int tmp = 0;
  for(auto x: vec){
    tmp += x;
  }

  std::array<double, 3> x;
  x[0] = 3.14; 

  if(tmp == 6 && x[0] == 3.14){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
