#include <stdio.h>
int main() {
  int i, a;
  a = 0;
#pragma omp parallel
  {
#pragma omp for ordered
    for (i=0;i<10;i++) {
#pragma omp ordered
      {
        a = i;
      }
    }
  }
  if( a == 9 ) printf("OK\n");
  else {
    printf("NG a=%d\n", a);
  }
  return 0;
}
