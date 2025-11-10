#include <iostream>
#include <random>

int main(void){
  std::random_device seed;
  std::mt19937 engine( seed() );

  std::bernoulli_distribution dist(1.0 - 0.5); 

  bool ret = false;
  for(int i=0; i<1000; ++i){
    if( dist(engine) == true ){
      ret = true;
      break;
    }
  }

  if(ret && dist.p() == 0.5){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
