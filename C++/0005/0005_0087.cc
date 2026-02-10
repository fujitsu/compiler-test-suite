#if  (__cplusplus)
#include <stdio.h>
#endif
int main()
{
  short int i;
  long int k;
  k=10;
#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<k;i++){
    }
  }
printf("pass\n");
}
