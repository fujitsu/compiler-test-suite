#include <iostream>
#include <mutex>

int x = 0;
std::mutex m;

int main(void){

  std::unique_lock<std::mutex> lk(m);

  if(lk && lk.owns_lock() ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

