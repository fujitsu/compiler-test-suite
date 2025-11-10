#include <iostream>
#include <random>

int main(void){
  std::random_device seed;
  std::mt19937 engine( seed() );

  std::binomial_distribution<> dist(10, 0.5);
  
  int res = dist( engine );

  if(0 <= res){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
