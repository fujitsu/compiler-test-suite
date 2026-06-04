


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  float         r4  = 0,
                a   = 5;
  int           max = 1;

#ifdef _OPENMP
  max = omp_get_max_threads();
#endif

#pragma omp parallel
  {
#pragma omp atomic
    r4+=10-a;
  }
  if (r4 != (10-a)*max) {
    printf("NG-01: r4 = %f\n",r4);
  }

#pragma omp parallel
 {
#pragma omp atomic
   r4-=a;
 }
  if (r4) {
    printf("NG-02: r4 = %f\n",r4);
  }

  r4 = 1;
#pragma omp parallel
  {
#pragma omp atomic
   r4*=2;
  }
  if (r4 != pow(2,max)) {
    printf("NG-03: r4 = %f\n",r4);
  }

#pragma omp parallel
  {
#pragma omp atomic
   r4/=2;
  }
  if (r4 != 1) {
    printf("NG-04: r4 = %f\n",r4);
  }

  r4=0;
#pragma omp parallel
  {
#pragma omp atomic
    r4++;
  }
  if (r4 != max) {
    printf("NG-05: r4 = %f\n",r4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    r4--;
  }
  if (r4) {
    printf("NG-06: r4 = %f\n",r4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++r4;
  }
  if (r4 != max) {
    printf("NG-07: r4 = %f\n",r4);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --r4;
  }
  if (r4) {
    printf("NG-08: r4 = %f\n",r4);
  }

  printf("pass\n");
  return 0;
}
