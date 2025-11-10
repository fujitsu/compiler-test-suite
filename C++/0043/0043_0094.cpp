#include <iostream>
#include <random>

int main(void){

  
  {
    std::random_device seed_gen;
    std::mt19937_64 rand( seed_gen() );

    uint_fast64_t x = rand();
    if(x >= 0){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    std::mt19937_64 rand;
    
    for(int i=0; i<9999; ++i){
      uint_fast64_t tmp = rand();
    }

    if(rand() == 9981545732273789042){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  
  {
    std::mt19937_64 rand;
    std::size_t n = (312 + 1) * sizeof(uint_fast64_t);

    if(n == sizeof(rand)){
      std::cout << "ok" << std::endl;
    } else{
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}

