#include <stdio.h>
#include <omp.h>
int main()
{
  int i, a[10]={0,0,0,0,0,0,0,0};

#pragma omp parallel
  for ( i=0 ; i<10 ; i++) {

#pragma omp flush (i)
    if ( i == 5 ) {
      continue;
    }
    a[i] = i*i;
  }
  printf("",a[5]);

}
