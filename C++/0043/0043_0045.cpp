#include <iostream>
#include <atomic>

int main(void){
  std::atomic<int> x;

  std::atomic_signal_fence(std::memory_order_release);
  x.store(100, std::memory_order_relaxed);

  if(x == 100){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
