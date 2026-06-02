#include <stdio.h>
#include <omp.h>
int main()
{
  int i, j, a[10]={0,0,0,0,0,0,0,0};

  #pragma omp parallel for 
  for ( i=0 ; i<10 ; i++) {
    #pragma omp flush (i)
    if (i == 9 )
      continue;
    a[i] = i*i;
    for ( j=0 ; j<10 ; j++) {
      #pragma omp flush (j)
      if (j == 9 )
        continue;
      a[j] = j*j;
    }
  }
  printf("",a[5]);

}
