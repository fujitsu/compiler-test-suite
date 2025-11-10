#include <iostream>

int func(long){
  return 0;
}

int func(char*){
  std::cout << "ok" << std::endl;
  return 0;
}

int main(void){
  int x = func(NULL);    
  int y = func(nullptr); 

  return 0;
}
