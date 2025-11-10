#include <iostream>

int main(void){
  double pi = 3.0;
  
  auto area = [ pi ](double r) mutable -> double {
    pi = 3.14;
    return r * r * pi;
  };

  if(pi == 3.0 && area(10) == 314.0) {
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;    
  }

  return 0;
}
