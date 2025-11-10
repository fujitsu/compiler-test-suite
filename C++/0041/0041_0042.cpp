#include <iostream>

int operator"" _func(unsigned long long val);

int operator"" _func(unsigned long long val){
  std::cout << "ok" << std::endl;
  return val;
}

int main(void){
  
  if( 100_func == 100){
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
