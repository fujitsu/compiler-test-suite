#include <iostream>
#include <cstdlib>

void func(void){
  std::cout << "ok" << std::endl;
}

int main(void){
#if defined (_LIBCPP_HAS_QUICK_EXIT)
  std::at_quick_exit( func );
  std::quick_exit(0);
#else
  std::cout << "ok" << std::endl;
#endif
  
  return 0;
}
