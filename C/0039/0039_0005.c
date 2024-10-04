#include <stdio.h>
int main() {
  int i, j, a[10][10];
  for( i=0;i<10;i++ ) {
    for( j=0;j<10;j++ ) a[i][j]=-1;
  }
#pragma omp parallel
#pragma omp for ordered private(i)
  for( j=0;j<10;j++ ) {
    if( j > 8 ) goto label01;
    for (i=0;i<10;i++) {
#pragma omp ordered
      {
        a[i][j] = i;
      }
    }
label01:;
  }
  if( a[8][0] == 8 && a[8][9] == -1 && a[1][1] == 1 && a[9][9] == -1 ) printf("OK\n");
  else {
    printf("NG %d\n", a[9][9]);
  }
  return 0;
}
