#include <stdio.h>
#include <omp.h>
int main()
{
  int i, a[10]={0,0,0,0,0,0,0,0};

#pragma omp  task
  for ( i=0 ; i<10 ; i++) {

    a[1]=1;
    a[i] = i*i;
    #pragma omp atomic read
    i=i;
  for ( int j=0 ; j<10 ; j++) {
  }

#pragma omp flush (i)

    continue;

  }
  printf("",a[5]);

}
