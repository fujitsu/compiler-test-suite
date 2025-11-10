#include <iostream>
#include <thread>

void func(void){
  const std::thread::id tid = std::this_thread::get_id();
  
}

int main(void){
  std::thread th1(func);
  std::thread th2(func);

  th1.join();
  th2.join();

  std::cout << "ok" << std::endl;

  return 0;
}
