#include <stdio.h>
int main()
{
  int i;
  long k;
  int j;
  k=10;
  j=20;
#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<k+j;i++){
    }
  }
printf("pass \n");
}
