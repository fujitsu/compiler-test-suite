#include <stdio.h>
int main()
{
  long int i;
  double a[10];
#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<10;i++){
      a[i]=i*2.5;
    }
  }
printf("pass \n");
}
