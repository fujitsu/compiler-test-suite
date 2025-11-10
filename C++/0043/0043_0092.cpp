#include <iostream>
#include <mutex>

std::once_flag once;

void init(void){
  std::cout << "ok" << std::endl;
}

int main(void){

  for(int i=0; i<10; ++i){
    std::call_once(once, init);
  }

  return 0;
}

