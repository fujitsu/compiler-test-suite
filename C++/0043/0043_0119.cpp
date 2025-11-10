#include <iostream>
#include <random>

int main(void){
  std::random_device seed;
  std::mt19937 engine( seed() );

  std::fisher_f_distribution<> dist(5, 10);

  double res = dist( engine );

  std::cout << "ok" << std::endl;

  return 0;
}
