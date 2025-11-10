#include <iostream>
#include <atomic>

int main(void){
  std::atomic_int_least8_t x(10);
  std::atomic_uint_least8_t y(20);

  if(x == 10 && y == 20){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
