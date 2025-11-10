#include <iostream>
#include <random>
#include <vector>

int main(void){
  std::random_device seed;
  std::mt19937 engine( seed() );

  std::vector<double> prob = { 0.0, 1.0, 2.0 };

  std::discrete_distribution<std::size_t> dist(prob.begin(), prob.end());
  
  std::size_t res = dist( engine );

  std::cout << "ok" << std::endl;

  return 0;
}


