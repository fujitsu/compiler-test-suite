#include <iostream>
#include <random>

int main(void){
  std::seed_seq seq = {1, 2, 3};

  std::mt19937 engine( seq );

  auto x = engine();

  std::cout << "ok" << std::endl;

  return 0;
}

