#include <iostream>
#include <random>

int main(void){

  
  {
    std::random_device seed_gen;
    std::ranlux24 rand( seed_gen() );

    uint32_t x = rand();
    if(x >= 0){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    std::ranlux24 rand;
    
    for(int i=0; i<9999; ++i){
      uint32_t tmp = rand();
    }

    if(rand() == 9901578){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}

