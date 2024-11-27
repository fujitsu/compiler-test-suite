#include <stdio.h>
int main()
{
  short int i;
  int k;
  k=10;
#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<k;i++){
    }
  }
printf("pass \n");
}
