


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  double        r8  = 0,
                a   = 5;
  int           max = 1;

#ifdef _OPENMP
  max = omp_get_max_threads();
#endif

#pragma omp parallel
  {
#pragma omp atomic
    r8+=10-a;
  }
  if (r8 != (10-a)*max) {
    printf("NG-01: r8 = %lf\n",r8);
  }

#pragma omp parallel
 {
#pragma omp atomic
   r8-=a;
 }
  if (r8) {
    printf("NG-02: r8 = %lf\n",r8);
  }

  r8 = 1;
#pragma omp parallel
  {
#pragma omp atomic
   r8*=2;
  }
  if (r8 != pow(2,max)) {
    printf("NG-03: r8 = %lf\n",r8);
  }

#pragma omp parallel
  {
#pragma omp atomic
   r8/=2;
  }
  if (r8 != 1) {
    printf("NG-04: r8 = %lf\n",r8);
  }

  r8=0;
#pragma omp parallel
  {
#pragma omp atomic
    r8++;
  }
  if (r8 != max) {
    printf("NG-05: r8 = %lf\n",r8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    r8--;
  }
  if (r8) {
    printf("NG-06: r8 = %lf\n",r8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++r8;
  }
  if (r8 != max) {
    printf("NG-07: r8 = %lf\n",r8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --r8;
  }
  if (r8) {
    printf("NG-08: r8 = %lf\n",r8);
  }

  printf("pass\n");
  return 0;
}
