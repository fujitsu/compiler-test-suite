#include "000.h"
#include <iostream>

void func(){
  C1<nullptr> c1;
  if(c1.getMember() == nullptr){
    std::cout << "C1 member = nullptr" << std::endl;
  }
}
