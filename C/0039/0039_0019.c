#include <stdio.h>
int main() {
  int b;
  b = -99;
#pragma omp parallel
  {
#pragma omp sections reduction(+:b)
    {
#pragma omp section
      {
        b = b + 1;
      }
#pragma omp section
      {
        b = b + 1;
      }
#pragma omp section
      {
        b = b + 1;
      }
#pragma omp section
      {
        b = b + 1;
      }
    }
  }
  if( b == -95 ) printf("OK\n");
  else printf("NG : b=%d\n", b);
  return 0;
}
