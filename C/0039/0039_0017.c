#include <stdio.h>
int main() {
  int b;
  b = -99;
#pragma omp parallel
  {
#pragma omp sections lastprivate(b)
    {
#pragma omp section
      {
        b = 1;
      }
#pragma omp section
      {
        b = 2;
      }
#pragma omp section
      {
        b = 3;
      }
#pragma omp section
      {
        b = 4;
      }
    }
  }
  if( b == 4 ) printf("OK\n");
  else printf("NG : b=%d\n", b);
  return 0;
}
