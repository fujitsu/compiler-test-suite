#include <iostream>

int f(){
  return 0;
}

int g(int ){
  return 10;
}

int main(void){
  int h = g( f() );

  if(h == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
