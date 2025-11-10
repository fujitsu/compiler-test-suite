#include <iostream>

void ok(void){
  
  std::cout << __func__ << std::endl;
}

int main(void){
  
  ok();

  return 0;
}
