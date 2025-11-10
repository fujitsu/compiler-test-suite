#include <iostream>
#include <atomic>

int main(void){
  std::atomic<int> x;

  x.store(100, std::memory_order_relaxed);

  std::atomic_thread_fence(std::memory_order_acquire);

  if(x == 100){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
