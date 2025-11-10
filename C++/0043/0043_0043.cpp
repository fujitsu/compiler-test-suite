#include <iostream>
#include <atomic>
#include <cassert>

int main(void){
  
  std::atomic<int> a(0), b(0);
  
  
  a.store(1, std::memory_order_relaxed);
  std::atomic_thread_fence(std::memory_order_seq_cst);
  b.store(1, std::memory_order_relaxed);
  int i = b.load(std::memory_order_relaxed);
  
  
  b.store(0, std::memory_order_relaxed);
  std::atomic_thread_fence(std::memory_order_seq_cst);
  int j = a.load(std::memory_order_relaxed);

  assert(i == 1 || j == 1);
  std::cout << "ok" << std::endl;

  return 0;
}
