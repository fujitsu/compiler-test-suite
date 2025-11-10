#include <iostream>
#include <array>

template <int... List>
std::array<int, 3> initializer(void){
  std::array<int, 3> vec = { List... };
  return vec;
}

int main(void){
  std::array<int, 3> vec = initializer<1, 2, 3>();

  for(auto x: vec){
    std::cout << x << std::endl;
  }

  return 0;
}
