


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int   i4  = 0,
        a   = 5,
        max = 1;

#ifdef _OPENMP
  max = omp_get_max_threads();
#endif

#pragma omp parallel
  {
#pragma omp atomic
    i4+=10-a;
  }
  if (i4 != (10-a)*max) {
    printf("NG-01: i4 = %d\n",i4);
  }

#pragma omp parallel
 {
#pragma omp atomic
   i4-=a;
 }
  if (i4) {
    printf("NG-02: i4 = %d\n",i4);
  }

  i4 = 1;
#pragma omp parallel
  {
#pragma omp atomic
   i4*=2;
  }
  if (i4 != pow(2,max)) {
    printf("NG-03: i4 = %d\n",i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
   i4/=2;
  }
  if (i4 != 1) {
    printf("NG-04: i4 = %d\n",i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i4&=1;
  }
  if (i4 != 1) {
    printf("NG-05: i4 = %d\n",i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i4^=1;
  }
  if (i4 == max%2) {
    printf("NG-06: i4 = %d\n",i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i4|=1;
  }
  if (i4 != 1) {
    printf("NG-07: i4 = %d\n",i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i4<<=1;
  }
  if (i4 != 1<<max) {
    printf("NG-08: i4 = %d\n",i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i4>>=1;
  }
  if (i4 != 1) {
    printf("NG-09: i4 = %d\n",i4);
  }

  i4=0;
#pragma omp parallel
  {
#pragma omp atomic
    i4++;
  }
  if (i4 != max) {
    printf("NG-10: i4 = %d\n",i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i4--;
  }
  if (i4) {
    printf("NG-11: i4 = %d\n",i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++i4;
  }
  if (i4 != max) {
    printf("NG-12: i4 = %d\n",i4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --i4;
  }
  if (i4) {
    printf("NG-13: i4 = %d\n",i4);
  }

  printf("pass\n");
  return 0;
}
