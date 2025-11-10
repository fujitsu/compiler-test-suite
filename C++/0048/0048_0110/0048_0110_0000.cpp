#include "000.h"
#include <iostream>

void func(){
  NS1::C1<> c1(17);
  std::cout << "C1 member = " << c1.getMember() << std::endl;

  NS2::C2<> c2;
  std::cout << "C2 member = " << c2.getMember() << std::endl;

  NS3::C3<> c3(c1);
  std::cout << "C3 member = " << c3.getMember() << std::endl;
}
