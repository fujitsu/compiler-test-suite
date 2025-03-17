#include <cassert>
#include <iostream>

int main()
{
  double f1 = -0xC.1p-1;
  assert(f1 == -6.031250);
  
  double f2 = +0XB.6p-2;
  assert(f2 == 2.843750);  
  
  double f3 = -0XB.6P-2;
  assert(f3 == -2.843750);
  
  double f4 = -0xC.3P-1f;
  assert(f4 == -6.093750);
  
  double f5 = +0XA.7P-1l;
  assert(f5 == 5.218750);

  double f6 = -0x2.3p-1F;
  assert(f6 == -1.093750);
  
  double f7 = -0xd.1p-1L;
  assert(f7 == -6.531250);
  
  double f8 = 0xe.1p-1L;
  assert(f8 == 7.031250);
  
  double f9 = -0x12.2p-1f;
  assert(f9 == -9.0625);
  
  double f10 = -0x1.1p-1F;
  assert(f10 == -0.531250);
  
  double f11 = +0xAp-4L;
  assert(f11 == 0.625000);
  
  double f12 = -0x123p-5f;
  assert(f12 == -9.093750);

  return 0;
}
