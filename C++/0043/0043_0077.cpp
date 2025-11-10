#include <iostream>
#include <mutex>
#include <chrono>

std::recursive_timed_mutex m;

int main(void){
  auto now = std::chrono::system_clock::now();
  auto time = std::chrono::seconds(10);

  if( m.try_lock_until(now + time) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  m.unlock();

  return 0;
}

