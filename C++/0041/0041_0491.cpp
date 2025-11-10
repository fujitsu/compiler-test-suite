#include <iostream>
#include <initializer_list>
#include <numeric>

int main(void){
  std::initializer_list<int> vec { 1, 2, 3};

  int sum = 0;
  for(auto x : vec){
    sum += x;
  }

  int sample = std::accumulate(vec.begin(), vec.end(), 0);

  if(sum == sample){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
