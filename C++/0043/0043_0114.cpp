#include <iostream>
#include <random>

int main(void){
  std::random_device seed;
  std::mt19937 engine( seed() );

  std::uniform_int_distribution<> dist(0, 10);

  {
    auto a = dist.a();
    auto min = dist.min();
    
    auto b = dist.b();
    auto max = dist.max();
    
    auto para = dist.param();
    dist.param( para );
    
    if(a == min && b == max){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }


  {
    std::uniform_int_distribution<>::param_type param(100, 200);
    dist.param( param );

    auto a = dist.a();
    auto min = dist.min();
    
    auto b = dist.b();
    auto max = dist.max();
    
    if(a == min && b == max){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }    
  }

  return 0;
}
