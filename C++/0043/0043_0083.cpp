#include <iostream>
#include <mutex>

int x = 0;
std::mutex m;

int main(void){

  std::unique_lock<std::mutex> lk1(m);
  std::unique_lock<std::mutex> lk2;

  lk1.swap(lk2);
  ++x;
  if(x == 1){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  lk2.unlock();

  return 0;
}

