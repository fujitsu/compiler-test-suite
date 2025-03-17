#include <iostream>

int main(void)
{
  int a[100],b[100];
  int i,j1,j2,k1,k2;
  j1=1,j2=2;
  for (i=0; i<100; i++) {
    a[i] = j1+j2;
    j1+=2;
    j2+=2;
  }
  k1=1,k2=2;
#pragma omp simd linear(k1,k2:2)
  for (i=0; i<100; i++) {
    b[i] = k1+k2;
    k1+=2;
    k2+=2;
  }
  for (i=0; i<100; i++) {
    if (a[i]!=b[i]) break;
  }
  if (j1 != k1 || j2 != k2) {
    std::cout << "NG" << std::endl;
    return 1;
  }
  if (i != 100) {
    std::cout << "NG" << std::endl;
    return 1;
  } else {
    std::cout << "OK" << std::endl;
    return 0;
  }
}
