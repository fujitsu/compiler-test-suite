#include <iostream>
#include <mutex>

int x = 0;
std::mutex m;

int main(void){

  std::lock_guard<std::mutex> lock(m);
  ++x;
  if(x == 1){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  m.unlock();

  return 0;
}

