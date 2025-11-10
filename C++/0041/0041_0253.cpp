#include <iostream>

int func(void){
  return 0;
}

int func(int x){  
  return x + 100;
}

int main(void){

  int x = func( func() );

  if(x == 100){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
