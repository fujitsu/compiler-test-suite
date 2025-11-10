#include <iostream>
#include <random>

int main(void){
  {
    std::random_device engine;    
    auto x = engine();
  }
  
  {
    try{
      std::random_device engine("mt19937");
    } catch(...){
      std::cout << "ok" << std::endl;
    }
  }

  return 0;
}

