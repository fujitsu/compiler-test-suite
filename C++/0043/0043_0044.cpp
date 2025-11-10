#include <iostream>
#include <atomic>

int main(void){
  std::atomic_flag x(ATOMIC_FLAG_INIT);

  auto ret1 = x.test_and_set();
  x.clear();

  auto ret2 = x.test_and_set(std::memory_order_release);
  
  if(!ret1 && !ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
