#include <iostream>
#include <cstdint>

int main(void){
  int value = 42;

  
  std::uintptr_t pointer = reinterpret_cast<std::uintptr_t>(&value);
  
  
  int* dist = reinterpret_cast<int*>(pointer);

  if(&value == dist){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
