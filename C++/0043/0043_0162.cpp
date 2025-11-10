#include <iostream>
#include <thread>

int main(void){
  const std::thread::id tid = std::this_thread::get_id();
 
  

  std::cout << "ok" << std::endl;

  return 0;
}
