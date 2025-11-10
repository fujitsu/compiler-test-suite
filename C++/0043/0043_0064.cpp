#include <iostream>
#include <mutex>

std::mutex m;

int main(void){

  auto handle = m.native_handle();

  if( std::is_same<decltype(handle), pthread_mutex_t*>::value ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

