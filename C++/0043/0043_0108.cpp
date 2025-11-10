#include <iostream>
#include <random>

int main(void){
  std::random_device seed;
  std::mt19937 engine( seed() );

  std::uniform_int_distribution<> dist(1, 10);

  auto sum = dist( engine );
  for(int i=0; i<10; ++i){
    sum += dist( engine );
  }
  
  if(0 < sum){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
