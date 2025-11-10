#include <iostream>


auto operator "" _test(unsigned long long x) -> decltype(x) {
  return x + 1;
}

int main(void){
  
  if(4_test == 5){
    std::cout << "ok" << std::endl;
  } 


  return 0;
}
