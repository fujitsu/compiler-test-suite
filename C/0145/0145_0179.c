


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  short int   i2  = 0,
              a   = 5;
  int         max = 1;

#ifdef _OPENMP
  max = omp_get_max_threads();
#endif

#pragma omp parallel
  {
#pragma omp atomic
    i2+=10-a;
  }
  if (i2 != (10-a)*max) {
    printf("NG-01: i2 = %d\n",i2);
  }

#pragma omp parallel
 {
#pragma omp atomic
   i2-=a;
 }
  if (i2) {
    printf("NG-02: i2 = %d\n",i2);
  }

  i2 = 1;
#pragma omp parallel
  {
#pragma omp atomic
   i2*=2;
  }
  if (i2 != pow(2,max)) {
    printf("NG-03: i2 = %d\n",i2);
  }

#pragma omp parallel
  {
#pragma omp atomic
   i2/=2;
  }
  if (i2 != 1) {
    printf("NG-04: i2 = %d\n",i2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i2&=1;
  }
  if (i2 != 1) {
    printf("NG-05: i2 = %d\n",i2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i2^=1;
  }
  if (i2 == max%2) {
    printf("NG-06: i2 = %d\n",i2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i2|=1;
  }
  if (i2 != 1) {
    printf("NG-07: i2 = %d\n",i2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i2<<=1;
  }
  if (i2 != 1<<max) {
    printf("NG-08: i2 = %d\n",i2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i2>>=1;
  }
  if (i2 != 1) {
    printf("NG-09: i2 = %d\n",i2);
  }

  i2=0;
#pragma omp parallel
  {
#pragma omp atomic
    i2++;
  }
  if (i2 != max) {
    printf("NG-10: i2 = %d\n",i2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i2--;
  }
  if (i2) {
    printf("NG-11: i2 = %d\n",i2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++i2;
  }
  if (i2 != max) {
    printf("NG-12: i2 = %d\n",i2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --i2;
  }
  if (i2) {
    printf("NG-13: i2 = %d\n",i2);
  }

  printf("pass\n");
  return 0;
}
