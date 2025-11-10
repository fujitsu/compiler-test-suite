#include <iostream>
#include <mutex>

int x = 0;
std::mutex m;

int main(void){

  std::unique_lock<std::mutex> lk(m);

  auto mtx = lk.release();
  ++x;
  if(x == 1){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  mtx->unlock();

  return 0;
}

