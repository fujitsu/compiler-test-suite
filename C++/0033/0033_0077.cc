#include <stdio.h>
int main()
{
  int a=0;
  int j=a++;
  int work=0;
#pragma omp parallel
  if (a)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if(!work)
    printf("ok\n");
  else
    printf("ng\n");
}
