#include <iostream>
#include <thread>
#include <chrono>

void func(void){
  auto stop_time = std::chrono::system_clock::now() + std::chrono::seconds(3);
  std::this_thread::sleep_until(stop_time);

  std::cout << "ok" << std::endl;
}

int main(void){
  std::thread th(func);
  th.join();

  return 0;
}
