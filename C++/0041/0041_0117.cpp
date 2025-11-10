#include <iostream>

int main(void){

  static_assert(true, "not compile error");

  std::cout << "ok" << std::endl;

  return 0;
}
