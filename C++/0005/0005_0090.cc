#if  (__cplusplus)
#include <stdio.h>
#endif
int main()
{
  int i;
  long k,n;
  int j;
  short int l,m;
  k=10;
  j=20;
  l=5;
  n=1;
  m=1;
#pragma omp parallel
  {
#pragma omp for
    for(i=n+l;i<k+j+l;i=i+(n+m)){
    }
  }
printf("pass\n");
}
