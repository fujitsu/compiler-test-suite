#if  (__cplusplus)
#include <stdio.h>
#endif
int main()
{
  long int i;
  double a[10];
#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<10;i=i+2){
      a[i]=i*2.5;
    }
  }
printf("pass\n");
}
