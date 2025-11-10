#include <iostream>
#include <random>

int main(void){
  std::random_device seed;

  std::subtract_with_carry_engine<uint_fast32_t, 24, 10, 24> engine( seed() );
  
  auto a = engine();

  std::cout << "ok" << std::endl;

  return 0;
}
