#include <iostream>
#include <random>

int main(void){

  
  {
    std::random_device seed_gen;
    std::knuth_b rand( seed_gen() );

    uint32_t x = rand();
    if(x >= 0){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    std::knuth_b rand;
    
    for(int i=0; i<9999; ++i){
      uint32_t tmp = rand();
    }

    if(rand() == 1112339016){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}

