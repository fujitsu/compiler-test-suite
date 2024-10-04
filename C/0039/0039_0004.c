#include <stdio.h>
int main() {
  int i, a[10];
  for( i=0;i<10;i++ ) a[i]=-1;
#pragma omp parallel
  {
#pragma omp for ordered
    for (i=0;i<10;i++) {
      if( i > 8 ) goto label01;
#pragma omp ordered
      {
        a[i] = i;
      }
label01:;
    }
  }
  if( a[8] == 8 && a[9] == -1 ) printf("OK\n");
  else {
    printf("NG a[9]=%d\n", a[9]);
  }
  return 0;
}
