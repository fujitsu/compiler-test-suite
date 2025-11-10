#include <iostream>
#include <atomic>

int main(void){
  

  std::atomic<int> x = ATOMIC_VAR_INIT(10);

  if(x == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
