#include <iostream>

void foo(float (&a)[100], float(&b)[100])
{
  int i;
  for (i=0; i<100; i++) {
    a[i] = (float)i;
  }
#pragma omp for simd aligned(a,b:32)
  for (i=0; i<100; i++) {
    b[i] = a[i];
  }
}

int main(void)
{
  float a[100] __attribute__((aligned(32)));
  float b[100] __attribute__((aligned(32)));
  float (&aa)[100] = a;
  float (&bb)[100] = b;
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
