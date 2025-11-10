#include <iostream>
#include <mutex>
#include <chrono>

std::mutex m1;
std::recursive_mutex m2;
std::timed_mutex m3;
std::recursive_timed_mutex m4;

int main(void){

  std::lock(m1, m2, m3, m4);
  
  std::cout << "ok" << std::endl;
  
  m1.unlock();
  m2.unlock();
  m3.unlock();
  m4.unlock();

  return 0;
}

