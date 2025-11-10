#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec {1, 2, 3};

  auto dist = vec.data();

  if(dist[0] == vec[0] &&
     dist[1] == vec[1] &&
     dist[2] == vec[2]){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
