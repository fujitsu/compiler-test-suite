#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> af;

  af.fill(10);

  if(af[0] == 10 && af[1] == 10 && af[2] == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
