#include <iostream>

unsigned long long operator"" _km(unsigned long long val){
  return val * 1000;
}

int main(void){
  auto dist1 = 1_km;
  auto dist2 = 20_km;

  if(dist1 = 1000 && dist2 == 20000){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
