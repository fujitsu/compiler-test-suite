#include <iostream>
#include <mutex>
#include <chrono>

std::recursive_timed_mutex m;

int main(void){
  auto time = std::chrono::seconds(10);

  if( m.try_lock_for(time) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  m.unlock();

  return 0;
}

