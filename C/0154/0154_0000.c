
#ifdef __GNUC__
#include <complex.h>
#include <stdio.h>

extern float _Complex test_complex17(float _Complex x1, float _Complex x2, float _Complex x3,
				     float _Complex x4, float _Complex x5, float _Complex x6,
				     float _Complex x7, float _Complex x8, float _Complex x9,
				     float _Complex x10, float _Complex x11, float _Complex x12,
				     float _Complex x13, float _Complex x14, float _Complex x15,
				     float _Complex x16, float _Complex x17) 
{
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16+x17;
}

extern float _Complex test_complex16(float _Complex x1, float _Complex x2, float _Complex x3,
				     float _Complex x4, float _Complex x5, float _Complex x6,
				     float _Complex x7, float _Complex x8, float _Complex x9,
				     float _Complex x10, float _Complex x11, float _Complex x12,
				     float _Complex x13, float _Complex x14, float _Complex x15,
				     float _Complex x16) 
{
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16;
}

extern float _Complex test_complex15(float _Complex x1, float _Complex x2, float _Complex x3,
				     float _Complex x4, float _Complex x5, float _Complex x6,
				     float _Complex x7, float _Complex x8, float _Complex x9,
				     float _Complex x10, float _Complex x11, float _Complex x12,
				     float _Complex x13, float _Complex x14, float _Complex x15)
{
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15;
}

extern float _Complex test_complex14(float _Complex x1, float _Complex x2, float _Complex x3,
				     float _Complex x4, float _Complex x5, float _Complex x6,
				     float _Complex x7, float _Complex x8, float _Complex x9,
				     float _Complex x10, float _Complex x11, float _Complex x12,
				     float _Complex x13, float _Complex x14)
{
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14;
}

extern float _Complex test_complex13(float _Complex x1, float _Complex x2, float _Complex x3,
				     float _Complex x4, float _Complex x5, float _Complex x6,
				     float _Complex x7, float _Complex x8, float _Complex x9,
				     float _Complex x10, float _Complex x11, float _Complex x12,
				     float _Complex x13)
{
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13;
}

extern float _Complex test_complex12(float _Complex x1, float _Complex x2, float _Complex x3,
				     float _Complex x4, float _Complex x5, float _Complex x6,
				     float _Complex x7, float _Complex x8, float _Complex x9,
				     float _Complex x10, float _Complex x11, float _Complex x12)
{
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12;
}

extern float _Complex test_complex11(float _Complex x1, float _Complex x2, float _Complex x3,
				     float _Complex x4, float _Complex x5, float _Complex x6,
				     float _Complex x7, float _Complex x8, float _Complex x9,
				     float _Complex x10, float _Complex x11)
{
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11;
}

extern float _Complex test_complex10(float _Complex x1, float _Complex x2, float _Complex x3,
				     float _Complex x4, float _Complex x5, float _Complex x6,
				     float _Complex x7, float _Complex x8, float _Complex x9,
				     float _Complex x10)
{
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10;
}

extern float _Complex test_complex9(float _Complex x1, float _Complex x2, float _Complex x3,
				    float _Complex x4, float _Complex x5, float _Complex x6,
				    float _Complex x7, float _Complex x8, float _Complex x9)
{
  return x1+x2+x3+x4+x5+x6+x7+x8+x9;
}

extern float _Complex test_complex8(float _Complex x1, float _Complex x2, float _Complex x3,
				    float _Complex x4, float _Complex x5, float _Complex x6,
				    float _Complex x7, float _Complex x8)
{
  return x1+x2+x3+x4+x5+x6+x7+x8;
}


int main() {
  float _Complex x1 = 1.0 + 1.0i;
  float _Complex x2 = 2.0 + 2.0i;
  float _Complex x3 = 3.0 + 3.0i;
  float _Complex x4 = 4.0 + 4.0i;
  float _Complex x5 = 5.0 + 5.0i;
  float _Complex x6 = 6.0 + 6.0i;
  float _Complex x7 = 7.0 + 7.0i;
  float _Complex x8 = 8.0 + 8.0i;
  float _Complex x9 = 9.0 + 9.0i;
  float _Complex x10 = 10.0 + 10.0i;
  float _Complex x11 = 11.0 + 11.0i;
  float _Complex x12 = 12.0 + 12.0i;
  float _Complex x13 = 13.0 + 13.0i;
  float _Complex x14 = 14.0 + 14.0i;
  float _Complex x15 = 15.0 + 15.0i;
  float _Complex x16 = 16.0 + 16.0i;
  float _Complex x17 = 17.0 + 17.0i;

  test_complex17(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  test_complex16(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  test_complex15(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  test_complex14(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  test_complex13(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  test_complex12(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  test_complex11(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  test_complex10(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  test_complex9(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  test_complex8(x1,x2,x3,x4,x5,x6,x7,x8);

  printf("OK\n");
  return 0;
}
#else
#include <stdio.h>

int main() {
  printf("OK\n");
  return 0;
}
#endif
