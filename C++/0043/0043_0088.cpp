#include <iostream>
#include <mutex>
#include <chrono>

int x = 0;
std::timed_mutex m;

int main(void){

  std::unique_lock<std::timed_mutex> lk(m, std::defer_lock);

  if( lk.try_lock_for(std::chrono::seconds(3)) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

