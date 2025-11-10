#include <iostream>
#include <mutex>

std::recursive_mutex m;

int main(void){

  if( m.try_lock() ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  m.unlock();

  return 0;
}

