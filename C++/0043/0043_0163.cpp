#include <iostream>
#include <thread>
#include <atomic>

std::atomic<bool> done(false);
int result;

int main(void){
  std::thread th([]{
      result = 42;
      done = true;
    });
  
  while(!done){
    std::this_thread::yield();
  }

  if(result == 42){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;    
  }

  th.join();

  return 0;
}
