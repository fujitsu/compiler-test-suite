#include <iostream>

unsigned long long operator "" _km(unsigned long long value){
  return value * 1000;
}

int main(void){
  if(1_km == 1000){
    std::cout << "ok" << std::endl;
  }


  return 0;
}
