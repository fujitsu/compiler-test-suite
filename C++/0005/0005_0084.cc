#if  (__cplusplus)
#include <stdio.h>
#endif

void sub(long int j, int k)
{
  long int i;
  double a[10];
#pragma omp parallel
  {
#pragma omp for
    for(i=j;i<k;i++){
      a[i]=i*2.5;
    }
  }
printf("pass\n");
}
int main()
{
  long int j;
  int k;

  j=0;
  k=10;
  sub(j,k);
}
