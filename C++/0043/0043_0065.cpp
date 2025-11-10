#include <iostream>
#include <mutex>

std::recursive_mutex m;

int fibo(int n){
  m.lock();
  if(n == 0){
    m.unlock();
    return 0;
  } else if(n == 1){
    m.unlock();
    return 1;
  }
  return fibo(n-1) + fibo(n-2);
}


int main(void){
  auto ret = fibo(10); 

  if(ret == 55){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng: " << ret << std::endl;
  }

  return 0;
}

