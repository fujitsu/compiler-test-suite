#include <iostream>
#include <random>

int main(void){
  std::random_device seed;
  std::mt19937 engine( seed() );

  std::cauchy_distribution<> dist(0.0, 1.0);

  double res = dist( engine );

  std::cout << "ok" << std::endl;

  return 0;
}
