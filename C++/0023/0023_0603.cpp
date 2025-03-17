#include <cassert>

int main()
{
  double f1 = +0xC.68p+2;
  assert(f1 == 49.625);
  
  double f2 = 0XB.6p+2;
  assert(f2 == 45.5);  

  double f3 = 0XB.6P+2;
  assert(f3 == 45.5);
  
  double f4 = +0xC.68P+2f;
  assert(f4 == 49.625);
  
  double f5 = +0XA.11P+2l;
  assert(f5 == 40.265625);
  
  double f6 = 0x2.68p+2F;
  assert(f6 == 9.625);

  double f7 = +0xd.33p+12L;
  assert(f7 == 54064);
  
  double f8 = +0Xdp+2f;
  assert(f8 == 52);
  
  return 0;
}
