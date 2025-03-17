#include <iostream>

void foo(float *&a, float *&b)
{
  int i;
  for (i=0; i<100; i++) {
    a[i] = (float)i;
  }
#pragma omp parallel for simd aligned(a:64)
  for (i=0; i<100; i++) {
    b[i] = a[i];
  }
}

int main(void)
{
  float a[100] __attribute__((aligned(64)));
  float b[100] __attribute__((aligned(64)));
  float *ap = a;
  float *bp = b;
  float *&aa = ap;
  float *&bb = bp;
  int i;

  foo(aa, bb);
  for (i=0; i<100; i++) {
    if (a[i] != b[i]) break;
  }
  if (i != 100) {
    std::cout << "NG" << i << std::endl;
    return 1;
  } else {
    std::cout << "OK" << std::endl;
    return 0;
  }
}
