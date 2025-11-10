#include <iostream>
#include <thread>
#include <chrono>

void func(void){
  auto rel_time = std::chrono::seconds(3);
  std::this_thread::sleep_for(rel_time);
  std::cout << "ok" << std::endl;
}

int main(void){
  std::thread th(func);
  th.join();

  return 0;
}
