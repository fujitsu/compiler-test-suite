#include <iostream>
#include <atomic>

int main(void){
  std::atomic_flag x = ATOMIC_FLAG_INIT;

  bool ret1 = std::atomic_flag_test_and_set(&x);
  std::atomic_flag_clear(&x);

  bool ret2 = std::atomic_flag_test_and_set_explicit(&x, std::memory_order_release);
  std::atomic_flag_clear_explicit(&x, std::memory_order_release);

  if(!ret1 && !ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
