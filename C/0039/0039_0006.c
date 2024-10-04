#include <stdio.h>
int main() {
  int i, j, a[10][10];
  for( i=0;i<10;i++ ) {
    for( j=0;j<10;j++ ) a[i][j]=-1;
  }
#pragma omp parallel
#pragma omp for ordered collapse(2)
  for( j=0;j<10;j++ ) {
    for( i=0;i<10;i++ ) {
#pragma omp ordered
      {
        a[i][j] = i + j;
      }
    }
  }

  for( j=0;j<10;j++ ) {
    for( i=0;i<10;i++ ) {
      if( a[i][j] != i + j ) {
        printf("NG a[%d][%d] = %d\n",i,j,a[i][j]);
        return 1;
      }
    }
  }
  printf("OK\n");
  return 0;
}
