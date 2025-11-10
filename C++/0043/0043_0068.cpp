#include <iostream>
#include <mutex>

int x = 0;
std::timed_mutex m;

int main(void){

  m.lock();
  ++x;
  if(x == 1){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  m.unlock();

  return 0;
}

