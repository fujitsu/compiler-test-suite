


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  signed char i1  = 0,
              a   = 5;
  int         max = 1;

#ifdef _OPENMP
  max = omp_get_max_threads();
  if (max > 6) {
    max = 6;
    omp_set_num_threads(max);
  }
#endif

#pragma omp parallel
  {
#pragma omp atomic
    i1+=10-a;
  }
  if (i1 != (10-a)*max) {
    printf("NG-01: i1 = %d\n",i1);
  }

#pragma omp parallel
 {
#pragma omp atomic
   i1-=a;
 }
  if (i1) {
    printf("NG-02: i1 = %d\n",i1);
  }

  i1 = 1;
#pragma omp parallel
  {
#pragma omp atomic
   i1*=2;
  }
  if (i1 != pow(2,max)) {
    printf("NG-03: i1 = %d\n",i1);
  }

#pragma omp parallel
  {
#pragma omp atomic
   i1/=2;
  }
  if (i1 != 1) {
    printf("NG-04: i1 = %d\n",i1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i1&=1;
  }
  if (i1 != 1) {
    printf("NG-05: i1 = %d\n",i1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i1^=1;
  }
  if (i1 == max%2) {
    printf("NG-06: i1 = %d\n",i1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i1|=1;
  }
  if (i1 != 1) {
    printf("NG-07: i1 = %d\n",i1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i1<<=1;
  }
  if (i1 != 1<<max) {
    printf("NG-08: i1 = %d\n",i1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i1>>=1;
  }
  if (i1 != 1) {
    printf("NG-09: i1 = %d\n",i1);
  }

  i1=0;
#pragma omp parallel
  {
#pragma omp atomic
    i1++;
  }
  if (i1 != max) {
    printf("NG-10: i1 = %d\n",i1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i1--;
  }
  if (i1) {
    printf("NG-11: i1 = %d\n",i1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++i1;
  }
  if (i1 != max) {
    printf("NG-12: i1 = %d\n",i1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --i1;
  }
  if (i1) {
    printf("NG-13: i1 = %d\n",i1);
  }

  printf("pass\n");
  return 0;
}
