#include <iostream>
#include <memory>
#include <cstdint>

int main(void){
  int* p = new int;
  std::declare_reachable(p);

  std::intptr_t x = reinterpret_cast<std::intptr_t>(p) ^ 0x555;

  int* q = std::undeclare_reachable( reinterpret_cast<int*>(x ^ 0x555) );

  std::cout << "ok" << std::endl;

  return 0;
}
