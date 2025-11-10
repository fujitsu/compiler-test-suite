#include <iostream>
#include <random>

int main(void){
  std::random_device seed;

  std::mersenne_twister_engine<uint_fast32_t, 
			       32, 624, 397, 31,
			       0x9908b0df,
			       11, 0xffffffff,
			       7,  0x9d2c5680,
			       15, 0xefc60000,
			       18, 1812433253> engine( seed() );
  
  auto a = engine();

  std::cout << "ok" << std::endl;

  return 0;
}
