#include "000.h"
#include <iostream>

void func(){
  C1 c1;
  std::cout << "C1 add result = " << c1.add<int>(4, 3) << std::endl;
  std::cout << "C1 sub result = " << c1.sub<double>(4.4, 3.3) << std::endl;
}
