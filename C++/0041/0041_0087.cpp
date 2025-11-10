#include <iostream>
#include <iterator>
#include <array>
#include <algorithm>

int main(void){
  std::array<int, 10> vec;
  auto beg = std::begin( vec );
  auto end = std::end( vec );

  std::sort(beg, end); 

  std::cout << "ok" << std::endl;

  return 0;
}
