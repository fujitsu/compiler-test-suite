#include <stdio.h>
int main()
{
  int i=0x80000000;
  unsigned int ui=0x80000000;
  int j,work=0;
  unsigned int uj;

#pragma omp parallel
  j = i >> 16U;
#pragma omp parallel
  uj = ui >> 16;
#pragma omp parallel
  if (j == 0xffff8000 && uj == 0x00008000)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    work = 1;

  if ( !work )
      printf("ok\n");
  else
    printf("ng %x\n", j);
}
