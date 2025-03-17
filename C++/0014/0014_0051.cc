#include <iostream>

int main(void)
{
  int a[100], b[100];
  int i;
  for (i=0; i<100; i++) {
    a[i] = i;
  }
#pragma loop unroll(8)
#pragma omp simd
  for (i=0; i<100; i++) {
    b[i] = i;
  }
  for (i=0; i<100; i++) {
    if (a[i]!=b[i]) break;
  }
  if (i!=100) {
    std::cout << "NG " << i << " " << a[i] << " " << b[i] << std::endl;
    return 1;
  } else {
    std::cout << "OK" << std::endl;
    return 0;
  }
}
