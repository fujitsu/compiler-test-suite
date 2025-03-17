#include <iostream>

void foo(float *a, float *b)
{
  int i;
  for (i=0; i<100; i++) {
    a[i] = (float)i;
  }
#pragma omp simd aligned(a:32)
  for (i=0; i<100; i++) {
    b[i] = a[i];
  }
}

int main(void)
{
  float a[100] __attribute__((aligned(32)));
  float b[100] __attribute__((aligned(32)));
  int i;

  foo(a, b);
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
