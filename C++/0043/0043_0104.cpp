#include <iostream>
#include <random>

int main(void){
  std::random_device engine;    
  auto x = engine();

  if(engine.min() <= x && x <= engine.max() ){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}

