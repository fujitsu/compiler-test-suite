#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> x{1, 2, 3};
  std::array<int, 3> y{4, 5, 6};

  swap(x, y);

  if(x[0] == 4 && x[1] == 5 && x[2] == 6 &&
     y[0] == 1 && y[1] == 2 && y[2] == 3){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
