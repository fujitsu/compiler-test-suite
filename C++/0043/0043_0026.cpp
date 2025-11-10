#include <iostream>
#include <atomic>

int main(void){
  std::atomic<bool> flag(false);
  std::atomic<int> x(0);
  std::atomic<double*> d_ptr(nullptr);

  flag = true;
  x += 10;

  if(flag && x == 10 && d_ptr == nullptr){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
