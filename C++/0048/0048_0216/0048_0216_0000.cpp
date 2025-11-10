#include "000.hpp"

int main()
{
  B b1;
  const B b2;
  volatile B b3;
  const volatile B b4;
  
  b1.sub1();
  b2.sub2();
  b3.sub3();
  b4.sub4();
  static_cast<B * __restrict__>(&b1)->sub5();
  static_cast<B * __restrict>(&b1)->sub6();
 
  B().sub1();
  static_cast<const B>(B()).sub2();
  static_cast<volatile B>(B()).sub3();
  static_cast<const volatile B>(B()).sub4();

  return 0;
}
