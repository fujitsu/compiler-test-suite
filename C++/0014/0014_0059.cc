#include <iostream>

int main(void)
{
  int a[100], b[100];
  int i,j,k;
  j=1;
  for (i=0; i<100; i++) {
    a[i] = j;
    j += 2;
  }
  k=1;
#pragma omp simd linear(k:2)
  for (i=0; i<100; i++) {
    b[i] = k;
    k += 2;
  }
  for (i=0; i<100; i++) {
    if (a[i]!=b[i]) break;
  }
  if (j != k) {
    std::cout << "NG j=" << j << " k=" << k << std::endl;
    return 1;
  }
  if (i != 100) {
    std::cout << "NG " << i << " " << a[i] << " " << b[i] << std::endl;
    return 1;
  } else {
    std::cout << "OK" << std::endl;
    return 0;
  }
}
