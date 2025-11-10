#include <iostream>

int main(void){

  double* p = new(std::nothrow) double[10];
  if(p == nullptr){ exit(1); }
 
  if(p != nullptr){
    delete p;
    std::cout << "ok" << std::endl;
  }

  return 0;
}
