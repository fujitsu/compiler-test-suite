#include <iostream>
#include <random>

int main()
{
  
  {
    std::minstd_rand0 base_engine;
    for (int i = 0; i < 10; ++i) {
      std::cout << base_engine() << std::endl;
    }
  }

  
  
  std::cout << std::endl;
  {
    std::shuffle_order_engine<std::minstd_rand0, 5> engine;

    for (int i = 0; i < 10; ++i) {
      std::cout << engine() << std::endl;
    }
  }

  return 0;
}
