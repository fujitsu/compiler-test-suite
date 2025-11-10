#include <iostream>
#include <random>

int main(void){
  std::random_device seed;
  std::mt19937 engine( seed() );

  std::gamma_distribution<> dist(1.0, 1.0);

  double res = dist( engine );

  std::cout << "ok" << std::endl;

  return 0;
}
