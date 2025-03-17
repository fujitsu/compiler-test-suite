#include <stdio.h>
int main() {
  int a[100],i;
  for( i=0;i<100;i++ ) a[i]=-99;
#pragma omp parallel
  {
#pragma omp sections private(i)
    {
#pragma omp section
      for( i=0;i<25;i++ ) {
        a[i] = a[i] + i + 99;
      }
#pragma omp section
      for( i=25;i<50;i++ ) {
        a[i] = a[i] + i + 99;
      }
#pragma omp section
      for( i=50;i<75;i++ ) {
        a[i] = a[i] + i + 99;
      }
#pragma omp section
      for( i=75;i<100;i++ ) {
        a[i] = a[i] + i + 99;
      }
    }
  }
  for( i=0;i<100;i++ ) {
    if( a[i] != i ) {
      printf("NG : a[%d]=%d\n", i, a[i]);
      return 1;
    }
  }
  printf("OK\n");
  return 0;
}
