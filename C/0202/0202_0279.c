#include <stdio.h>
#include <omp.h>
int main()
{
  int i, a[10]={0,0,0,0,0,0,0,0};

  #pragma omp parallel for 
  for ( i=0 ; i<10 ; i++) {
    #pragma omp flush (i)
    a[i] = i*i;
      continue;
  }
  printf("",a[5]);

}
