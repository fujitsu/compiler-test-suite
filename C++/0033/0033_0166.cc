#include <stdio.h>
int main()
{
  struct B { int bi; };
  int B::*bpm1 = 0;
  int B::*bpm2 = &B::bi;
  int work = 0;
#pragma omp parallel
  if( bpm1 != bpm2 )
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if( !work )
    printf("ok\n");
  else
    printf("ng bpm1 : %d , bpm2 : %d \n", bpm1, bpm2);
}
