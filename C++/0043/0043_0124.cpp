#include <iostream>
#include <random>

int main(void){
  std::random_device seed;
  std::linear_congruential_engine<uint_fast32_t, 16807, 0, 2147483647> engine( seed() );

  auto a = engine();
  std::cout << "ok" << std::endl;

  return 0;
}
