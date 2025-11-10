#include <iostream>
#include <random>

int main(void){

  
  {
    std::random_device seed_gen;
    std::minstd_rand0 rand( seed_gen() );

    uint32_t x = rand();
    if(x >= 0){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    std::minstd_rand0 rand;
    
    for(int i=0; i<9999; ++i){
      uint32_t tmp = rand();
    }

    if(rand() == 1043618065){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    std::minstd_rand0 rand;
    std::size_t n = sizeof(uint_fast32_t);

    if(n == sizeof(rand)){
      std::cout << "ok" << std::endl;
    } else{
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}

