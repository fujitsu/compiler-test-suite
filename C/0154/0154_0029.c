
#ifdef __GNUC__
#include <complex.h>
#include <stdio.h>

float _Complex test_abi_1(
float _Complex x1, float _Complex x2, float _Complex x3,
float _Complex x4, float _Complex x5, float _Complex x6,
float _Complex x7, float _Complex x8, float _Complex x9,
float _Complex x10, float _Complex x11, float _Complex x12,
float _Complex x13, float _Complex x14, float _Complex x15,
float _Complex x16) {
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16;
}

float _Complex test_abi_2(
double  x1, float _Complex  x2, float _Complex  x3,
float _Complex  x4, float _Complex  x5, float _Complex  x6,
float _Complex  x7, float _Complex  x8, float _Complex  x9,
float _Complex  x10, float _Complex  x11, float _Complex  x12,
float _Complex  x13, float _Complex  x14, float _Complex  x15,
float _Complex  x16) {
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16;

}

float _Complex test_abi_3(
float _Complex x1, float _Complex x2, float _Complex x3,
float _Complex x4, float _Complex x5, float _Complex x6,
float _Complex x7, float _Complex x8, float _Complex x9,
float _Complex x10, float _Complex x11, float _Complex x12,
float _Complex x13, float _Complex x14, float _Complex x15,
float x16) {
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16;
}


float _Complex test_abi_4(
float _Complex x1, float _Complex x2, float _Complex x3,
float _Complex x4, float _Complex x5, float _Complex x6,
float _Complex x7, float _Complex x8, float _Complex x9,
float _Complex x10, float _Complex x11, float _Complex x12,
float _Complex x13, float _Complex x14, float _Complex x15,
double x16) {
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16;
}

float  test_abi_5(
float  x1, float  x2, float  x3,
float  x4, float  x5, float  x6,
float  x7, float  x8, float  x9,
float  x10, float  x11, float  x12,
float  x13, float  x14, float  x15,
float  x16, float  x17, float  x18,
float  x19, float  x20, float  x21,
float  x22, float  x23, float  x24,
float  x25, float  x26, float  x27,
float  x28, float  x29, float  x30,
float x31, float x32) {
  return x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16
  +x17+x18+x19+x20+x21+x22+x23+x24+x25+x26+x27+x28+x29+x30+x31+x32;
}

int main() {
  float _Complex c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16;
  float f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16;
  float f17,f18,f19,f20,f21,f22,f23,f24,f25,f26,f27,f28,f29,f30,f31,f32;
  double d1;

  
  test_abi_1(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16);
  test_abi_2(d1,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15);
  test_abi_3(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,f1);  
  test_abi_4(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,d1);
  test_abi_5(f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16,
	    f17,f18,f19,f20,f21,f22,f23,f24,f25,f26,f27,f28,f29,f30,f31,f32);

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
