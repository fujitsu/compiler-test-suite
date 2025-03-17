


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  unsigned int   u4  = 0,
                 a   = 5,
                 max = 1;

#ifdef _OPENMP
  max = omp_get_max_threads();
#endif

#pragma omp parallel
  {
#pragma omp atomic
    u4+=10-a;
  }
  if (u4 != (10-a)*max) {
    printf("NG-01: u4 = %d\n",u4);
  }

#pragma omp parallel
 {
#pragma omp atomic
   u4-=a;
 }
  if (u4) {
    printf("NG-02: u4 = %d\n",u4);
  }

  u4 = 1;
#pragma omp parallel
  {
#pragma omp atomic
   u4*=2;
  }
  if (u4 != pow(2,max)) {
    printf("NG-03: u4 = %d\n",u4);
  }

#pragma omp parallel
  {
#pragma omp atomic
   u4/=2;
  }
  if (u4 != 1) {
    printf("NG-04: u4 = %d\n",u4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u4&=1;
  }
  if (u4 != 1) {
    printf("NG-05: u4 = %d\n",u4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u4^=1;
  }
  if (u4 == max%2) {
    printf("NG-06: u4 = %d\n",u4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u4|=1;
  }
  if (u4 != 1) {
    printf("NG-07: u4 = %d\n",u4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u4<<=1;
  }
  if (u4 != 1<<max) {
    printf("NG-08: u4 = %d\n",u4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u4>>=1;
  }
  if (u4 != 1) {
    printf("NG-09: u4 = %d\n",u4);
  }

  u4=0;
#pragma omp parallel
  {
#pragma omp atomic
    u4++;
  }
  if (u4 != max) {
    printf("NG-10: u4 = %d\n",u4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u4--;
  }
  if (u4) {
    printf("NG-11: u4 = %d\n",u4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++u4;
  }
  if (u4 != max) {
    printf("NG-12: u4 = %d\n",u4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --u4;
  }
  if (u4) {
    printf("NG-13: u4 = %d\n",u4);
  }

  printf("pass\n");
  return 0;
}
