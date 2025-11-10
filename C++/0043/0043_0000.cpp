#include <iostream>
#include <cstddef>

int main(void){

  static_assert( alignof(std::max_align_t) == 16, 
		 "std::max_align_t is not 16");

  std::cout << "ok" << std::endl;

  return 0;
}
