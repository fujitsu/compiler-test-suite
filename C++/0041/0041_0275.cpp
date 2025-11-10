#include <iostream>

void test(void){
  std::cout << __PRETTY_FUNCTION__ << std::endl;
}

int main(void){
  
  test();

  return 0;
}
