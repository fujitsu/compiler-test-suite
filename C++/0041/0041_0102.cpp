#include <iostream>






int main(void){

#line 32768
  std::cout << __LINE__ << std::endl;

#line 2147483648
  std::cout << __LINE__ << std::endl;

  return 0;
}
