#include <iostream>

int main(void)
{
  int a[200], b[100], c[100];
  int i;
  int *p, *q;
  for (i=0; i<200; i++) {
    a[i] = i;
  }
  p = a;
  for (i=0; i<100; i++) {
    b[i] = *p;
    p += 2;
  }
  q = a;
#pragma omp simd linear(q:2)
  for (i=0; i<100; i++) {
    c[i] = *q;
    q += 2;
  }
  for (i=0; i<100; i++) {
    if (b[i] != c[i]) break;
  }
  if (p != q) {
    std::cout << "NG" << std::endl;
  }
  if (i != 100) {
    std::cout << "NG " <<  i << b[i] << c[i] << std::endl;
    return 1;
  } else {
    std::cout << "OK" << std::endl;
    return 0;
  }
}
