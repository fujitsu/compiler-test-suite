


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  long long int i8  = 0,
                a   = 5;
  int           max = 1;

#ifdef _OPENMP
  max = omp_get_max_threads();
#endif

#pragma omp parallel
  {
#pragma omp atomic
    i8+=10-a;
  }
  if (i8 != (10-a)*max) {
    printf("NG-01: i8 = %d\n",i8);
  }

#pragma omp parallel
 {
#pragma omp atomic
   i8-=a;
 }
  if (i8) {
    printf("NG-02: i8 = %d\n",i8);
  }

  i8 = 1;
#pragma omp parallel
  {
#pragma omp atomic
   i8*=2;
  }
  if (i8 != pow(2,max)) {
    printf("NG-03: i8 = %d\n",i8);
  }

#pragma omp parallel
  {
#pragma omp atomic
   i8/=2;
  }
  if (i8 != 1) {
    printf("NG-04: i8 = %d\n",i8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i8&=1;
  }
  if (i8 != 1) {
    printf("NG-05: i8 = %d\n",i8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i8^=1;
  }
  if (i8 == max%2) {
    printf("NG-06: i8 = %d\n",i8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i8|=1;
  }
  if (i8 != 1) {
    printf("NG-07: i8 = %d\n",i8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i8<<=1;
  }
  if (i8 != 1<<max) {
    printf("NG-08: i8 = %d\n",i8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i8>>=1;
  }
  if (i8 != 1) {
    printf("NG-09: i8 = %d\n",i8);
  }

  i8=0;
#pragma omp parallel
  {
#pragma omp atomic
    i8++;
  }
  if (i8 != max) {
    printf("NG-10: i8 = %d\n",i8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    i8--;
  }
  if (i8) {
    printf("NG-11: i8 = %d\n",i8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++i8;
  }
  if (i8 != max) {
    printf("NG-12: i8 = %d\n",i8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --i8;
  }
  if (i8) {
    printf("NG-13: i8 = %d\n",i8);
  }

  printf("pass\n");
  return 0;
}
