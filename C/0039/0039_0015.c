#include <stdio.h>
int main() {
  int a[10][10],i,j,n;
  for( i=0;i<10;i++ ) {
    for( j=0;j<10;j++ ) a[i][j]=-88;
  }
#pragma omp parallel
  {
#pragma omp sections nowait
    {
#pragma omp section
      for( i=0,n=0;i<10;i++ ) {
        for( j=0;j<10;j++,n++ ) {
          a[i][j] = a[i][j] + n + 88;
        }
      }
    }
  }
  for( i=0,n=0;i<10;i++ ) {
    for( j=0;j<10;j++,n++ ) {
      if( a[i][j] != n ) {
        printf("NG : a[%d,%d]=%d/%d\n", i, j, a[i], n);
        return 1;
      }
    }
  }
  printf("OK\n");
  return 0;
}
