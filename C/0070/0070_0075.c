#include <stdio.h>
int main()
{
  long int i;
  long int j;
  long int k;
  int l;
  double a[10];
  j=0;
  k=10;
  l=1;
#pragma omp parallel
  {
#pragma omp for
    for(i=j;i<k-l;i++){
      a[i]=i*2.5;
    }
  }
printf("pass \n");
}
