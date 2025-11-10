#include <iostream>
#include <atomic>

int main(void){
  std::atomic_char x('A');

  std::atomic_int y(10);

  if(x == 'A' && y == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
