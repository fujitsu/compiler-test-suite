#include <iostream>
#include <memory>

int main(void){
  char buffer[1024];
  void* ptr = buffer;
  std::size_t space = sizeof(buffer) - 1;

  std::size_t n = 3;
  if( std::align(alignof(int), sizeof(int) * n, ptr, space) ){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
