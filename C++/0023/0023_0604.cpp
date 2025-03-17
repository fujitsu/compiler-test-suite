#include <cassert>

int main()
{
  double f1 = +0x12;
  assert(f1 == 18);

  double f2 = -0Xf;
  assert(f2 == -15);
  
  double f3 = +0XABl;
  assert(f3 == 171);
  
  double f4 = -0x9AL;
  assert(f4 == -154);
  
  double f5 = +0xAf;
  assert(f5 == 175);
  
  double f6 = -0xC12F;
  assert(f6 == -49455);

}
