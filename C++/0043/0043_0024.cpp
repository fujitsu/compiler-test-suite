#include <iostream>
#include <atomic>

int main(void){
  std::atomic<int> data;

  data.store(100, std::memory_order_release);

  if(data.load(std::memory_order_consume) == 100){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
