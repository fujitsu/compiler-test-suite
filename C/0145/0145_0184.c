


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  unsigned short int   u2  = 0,
                       a   = 5;
  int                  max = 1;

#ifdef _OPENMP
  max = omp_get_max_threads();
#endif

#pragma omp parallel
  {
#pragma omp atomic
    u2+=10-a;
  }
  if (u2 != (10-a)*max) {
    printf("NG-01: u2 = %d\n",u2);
  }

#pragma omp parallel
 {
#pragma omp atomic
   u2-=a;
 }
  if (u2) {
    printf("NG-02: u2 = %d\n",u2);
  }

  u2 = 1;
#pragma omp parallel
  {
#pragma omp atomic
   u2*=2;
  }
  if (u2 != pow(2,max)) {
    printf("NG-03: u2 = %d\n",u2);
  }

#pragma omp parallel
  {
#pragma omp atomic
   u2/=2;
  }
  if (u2 != 1) {
    printf("NG-04: u2 = %d\n",u2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u2&=1;
  }
  if (u2 != 1) {
    printf("NG-05: u2 = %d\n",u2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u2^=1;
  }
  if (u2 == max%2) {
    printf("NG-06: u2 = %d\n",u2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u2|=1;
  }
  if (u2 != 1) {
    printf("NG-07: u2 = %d\n",u2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u2<<=1;
  }
  if (u2 != 1<<max) {
    printf("NG-08: u2 = %d\n",u2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u2>>=1;
  }
  if (u2 != 1) {
    printf("NG-09: u2 = %d\n",u2);
  }

  u2=0;
#pragma omp parallel
  {
#pragma omp atomic
    u2++;
  }
  if (u2 != max) {
    printf("NG-10: u2 = %d\n",u2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u2--;
  }
  if (u2) {
    printf("NG-11: u2 = %d\n",u2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++u2;
  }
  if (u2 != max) {
    printf("NG-12: u2 = %d\n",u2);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --u2;
  }
  if (u2) {
    printf("NG-13: u2 = %d\n",u2);
  }

  printf("pass\n");
  return 0;
}
