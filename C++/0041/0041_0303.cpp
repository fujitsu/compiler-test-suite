#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec {1, 2, 3};

  auto dist = vec.data();

  dist[0] = 10;
  dist[1] = 11;
  dist[2] = 12;

  if(dist[0] == 10 &&
     dist[1] == 11 &&
     dist[2] == 12){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
