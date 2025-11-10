#include <iostream>
#include <atomic>

int main(void){
  std::atomic_flag x1;
  std::atomic_flag x2 = ATOMIC_FLAG_INIT;
  std::atomic_flag x3(ATOMIC_FLAG_INIT);

  std::cout << "ok" << std::endl;

  return 0;
}
