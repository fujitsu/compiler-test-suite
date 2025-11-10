#include <iostream>

int main(void){

#if defined __STDC_HOSTED__
  std::cout << "ok" << std::endl;
#else 
  std::cout << "ng" << std::endl;
#endif

  return 0;
}
