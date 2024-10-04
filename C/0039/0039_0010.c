#include <stdio.h>
int main() {
  int i, a;
  a = -99;
#pragma omp parallel
  {
#pragma omp for ordered reduction(+:a)
    for (i=0;i<10;i++) {
#pragma omp ordered
      {
        a = a + 2;
      }
    }
  }
  if( a == (-99+10*2) ) printf("OK\n");
  else {
    printf("NG a=%d\n", a);
  }
  return 0;
}
