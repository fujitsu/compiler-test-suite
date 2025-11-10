#include <iostream>
#include <atomic>

int main(void){
  std::atomic<int> x;
  std::atomic<int> y;
  std::atomic<int> z;
  std::atomic<int> w;

  atomic_store(&x, 2);
  atomic_store_explicit(&y, 2, std::memory_order_release);
  z.store(2, std::memory_order_release);
  w = 2;

  if(x == 2 && y == 2 && z == 2 && w == 2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
