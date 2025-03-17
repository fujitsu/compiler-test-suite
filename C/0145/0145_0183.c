


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  unsigned char u1  = 0,
                a   = 5;
  int           max = 1;

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
    u1+=10-a;
  }
  if (u1 != (10-a)*max) {
    printf("NG-01: u1 = %d\n",u1);
  }

#pragma omp parallel
 {
#pragma omp atomic
   u1-=a;
 }
  if (u1) {
    printf("NG-02: u1 = %d\n",u1);
  }

  u1 = 1;
#pragma omp parallel
  {
#pragma omp atomic
   u1*=2;
  }
  if (u1 != pow(2,max)) {
    printf("NG-03: u1 = %d\n",u1);
  }

#pragma omp parallel
  {
#pragma omp atomic
   u1/=2;
  }
  if (u1 != 1) {
    printf("NG-04: u1 = %d\n",u1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u1&=1;
  }
  if (u1 != 1) {
    printf("NG-05: u1 = %d\n",u1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u1^=1;
  }
  if (u1 == max%2) {
    printf("NG-06: u1 = %d\n",u1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u1|=1;
  }
  if (u1 != 1) {
    printf("NG-07: u1 = %d\n",u1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u1<<=1;
  }
  if (u1 != 1<<max) {
    printf("NG-08: u1 = %d\n",u1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u1>>=1;
  }
  if (u1 != 1) {
    printf("NG-09: u1 = %d\n",u1);
  }

  u1=0;
#pragma omp parallel
  {
#pragma omp atomic
    u1++;
  }
  if (u1 != max) {
    printf("NG-10: u1 = %d\n",u1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u1--;
  }
  if (u1) {
    printf("NG-11: u1 = %d\n",u1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++u1;
  }
  if (u1 != max) {
    printf("NG-12: u1 = %d\n",u1);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --u1;
  }
  if (u1) {
    printf("NG-13: u1 = %d\n",u1);
  }

  printf("pass\n");
  return 0;
}
