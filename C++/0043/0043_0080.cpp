#include <iostream>
#include <mutex>

int x = 0;
std::mutex m;

int main(void){

  std::unique_lock<std::mutex> lk(m, std::defer_lock);
  lk.lock();
  ++x;
  if(x == 1){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  m.unlock();

  return 0;
}

