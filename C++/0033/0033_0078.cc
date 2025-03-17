#include <stdio.h>
int main()
{
  long double ld;
  long *p;
  char                   ca=127;
  int work=0;

#pragma omp parallel
  if(((long double)ca - 127) >= -1e-6)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    work=1;

  if(!work)
    printf("ok\n");
  else
    printf("ng\n");
}

