#include <iostream>

int main(void){
  double pi = 3.14;

  auto area = [ pi ](double r){
    return r * r * pi;
  };

  if( area(10.0) == 314.0 ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  auto func = [=](void){ };

  return 0;
}
