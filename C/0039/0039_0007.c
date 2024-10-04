#include <stdio.h>
int main() {
  int i, a;
  a = -99;
#pragma omp parallel
  {
#pragma omp for ordered private(a)
    for (i=0;i<10;i++) {
#pragma omp ordered
      {
        a = i;
      }
    }
  }
  if( a == -99 ) printf("OK\n");
  else {
    printf("NG a=%d\n", a);
  }
  return 0;
}
