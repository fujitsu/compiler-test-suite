#include <iostream>
#include <array>
#include <numeric>

int main(void){
  std::array<int, 5> x{5, 4, 3, 2, 1};

  auto beg = std::begin(x);
  auto end = std::end(x);

  int org = std::accumulate(beg, end, 0);

  int sum = 0;
  for(auto tmp : x){
    sum += tmp;
  } 

  if(sum == org){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
