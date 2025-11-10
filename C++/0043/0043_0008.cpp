#include <iostream>
#include <cstdint>

int main(void){

  int* p = new int;

  std::intptr_t x = reinterpret_cast<std::intptr_t>(p) ^ 0x555;

  int* q = reinterpret_cast<int*>(x ^ 0x555);
  int y = *q;


  std::cout << "ok" << std::endl;

  delete p;

  return 0;
}
