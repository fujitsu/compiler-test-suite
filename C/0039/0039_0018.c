#include <stdio.h>
int main() {
  int b;
  b = -99;
#pragma omp parallel
  {
#pragma omp sections private(b)
    {
#pragma omp section
      {
        b = b + 1;
      }
#pragma omp section
      {
        b = b + 2;
      }
#pragma omp section
      {
        b = b + 3;
      }
#pragma omp section
      {
        b = b + 4;
      }
    }
  }
  if( b == -99 ) printf("OK\n");
  else printf("NG : b=%d\n", b);
  return 0;
}
