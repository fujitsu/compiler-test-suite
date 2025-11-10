#include <iostream>
#include <array>
#include <algorithm>

int main(void){
  std::array<int, 5> x{5, 4, 3, 2, 1};

  auto beg = x.begin();
  auto end = x.end();

  std::sort(beg, end);

  if(x[0] == 1 && x[1] == 2 && x[2] == 3 &&
     x[3] == 4 && x[4] == 5){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
