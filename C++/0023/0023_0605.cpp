#include<cassert>

int main()
{
  double f1 = 0xC.681'234p+2;
  double b1 = 0xC.681234p+2;
  assert(f1 == b1);
  
  double f2 = -0XB.623'123'123p+2;
  double b2 = -0XB.623'123'123p+2;
  assert(f2 == b2);  

  double f3 = 0XB12'123.612P+2;
  double b3 = 0XB12123.612P+2;
  assert(f3 == b3);
  
  double f4 = +0xC.68123456789P-2f;
  double b4 = 0xC.68'123'456'789P-2f;
  assert(f4 == b4);
  
  double f5 = 0XA.111'233'444P+2l;
  double b5 = 0xA.111233444p+2l;
  assert(f5 == b5);
  
  double f6 = +0x21'234.68p+2F;
  double b6 = +0x21234.68p+2F;
  assert(f6 == b6);

  double f7 = 0xd.33'333'333'333'333p+12L;
  double b7 = 0xd.33333333333333p+12L;
  assert(f7 == b7);
  
  double f8 = 0xe.1123455677888p-1L;
  double b8 = 0xe.11'23'455'677'888p-1L;
  assert(f8 == b8);
  
  double f9 = -0x1.23'abcp+4f;
  double b9 = -0x1.23abcp+4f;
  assert(f9 == b9);

  double f10 = -0x1.abc'defp-1F;
  double b10 = -0x1.abcdefp-1F;
  assert(f10 == b10);
  
  double f11 = -0XA.123'456p-4L;
  double b11 = -0xA.123456P-4L;
  assert(f11 == b11);
  
  double f12 = -0x123'456'788p+5f;
  double b12 = -0x123456788p+5f;
  assert(f12 == b12);
  
  return 0;
}
