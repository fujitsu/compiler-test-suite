#include <stdio.h>
int main() {
  int b;
  b = -99;
#pragma omp parallel
  {
#pragma omp sections firstprivate(b), lastprivate(b)
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
        b = b * (-1);
      }
    }
  }
  if( b > 0 ) printf("OK\n");
  else printf("NG : b=%d\n", b);
  return 0;
}
