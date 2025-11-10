#include <iostream>
#include <atomic>

int main(void){
  std::atomic<int> x;
  std::atomic<int> y(10);

  if(y == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
