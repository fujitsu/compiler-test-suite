#include <iostream>

int main(void)
{
  int a[100] = {0}, b[100] = {0};
  int i;
  for (i=2; i<100; i++) {
    a[i] = a[i-2] + 1 ;
  }
#pragma omp simd safelen(2)
  for (i=2; i<100; i++) {
    b[i] = b[i-2] + 1;
  }
  for (i=0; i<100; i++) {
    if (a[i]!=b[i]) break;
  }
  if (i!=100) {
    std::cout << "NG " <<  i << " " << a[i] << " " <<  b[i] << std::endl;
    return 1;
  } else {
    std::cout << "OK" << std::endl;
    return 0;
  }
}
