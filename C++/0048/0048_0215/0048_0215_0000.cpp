#include "000.hpp"

int main()
{
  B b1;
  const B b2;
  volatile B b3;
  const volatile B b4;
  B b5;

  b1.sub1();
  b2.sub2();
  b3.sub3();
  b4.sub4();
  static_cast<B* __restrict__>(&b5)->sub5(); 
  static_cast<B* __restrict>(&b5)->sub6(); 
 
  return 0;
}
