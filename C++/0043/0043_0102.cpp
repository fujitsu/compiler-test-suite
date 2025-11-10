#include <iostream>
#include <random>

int main(void){

  
  {
    std::random_device seed_gen;
    std::default_random_engine rand( seed_gen() );

    uint32_t x = rand();
    if(x >= 0){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}

