#include <stdio.h>
int main() {
  int i, a;
  a = 0;
#pragma omp parallel
  {
#pragma omp for schedule(dynamic)
    for (i=0;i<10;i++) {
#pragma omp critical
      {
        a = a+i;
      }
    }
  }
  if( a == 45 ) printf("OK\n");
  else {
    printf("NG a=%d\n", a);
  }
  return 0;
}
