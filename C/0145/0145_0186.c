


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  unsigned long long int u8  = 0,
                         a   = 5;
  int                    max = 1;

#ifdef _OPENMP
  max = omp_get_max_threads();
#endif

#pragma omp parallel
  {
#pragma omp atomic
    u8+=10-a;
  }
  if (u8 != (10-a)*max) {
    printf("NG-01: u8 = %d\n",u8);
  }

#pragma omp parallel
 {
#pragma omp atomic
   u8-=a;
 }
  if (u8) {
    printf("NG-02: u8 = %d\n",u8);
  }

  u8 = 1;
#pragma omp parallel
  {
#pragma omp atomic
   u8*=2;
  }
  if (u8 != pow(2,max)) {
    printf("NG-03: u8 = %d\n",u8);
  }

#pragma omp parallel
  {
#pragma omp atomic
   u8/=2;
  }
  if (u8 != 1) {
    printf("NG-04: u8 = %d\n",u8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u8&=1;
  }
  if (u8 != 1) {
    printf("NG-05: u8 = %d\n",u8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u8^=1;
  }
  if (u8 == max%2) {
    printf("NG-06: u8 = %d\n",u8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u8|=1;
  }
  if (u8 != 1) {
    printf("NG-07: u8 = %d\n",u8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u8<<=1;
  }
  if (u8 != 1<<max) {
    printf("NG-08: u8 = %d\n",u8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u8>>=1;
  }
  if (u8 != 1) {
    printf("NG-09: u8 = %d\n",u8);
  }

  u8=0;
#pragma omp parallel
  {
#pragma omp atomic
    u8++;
  }
  if (u8 != max) {
    printf("NG-10: u8 = %d\n",u8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    u8--;
  }
  if (u8) {
    printf("NG-11: u8 = %d\n",u8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++u8;
  }
  if (u8 != max) {
    printf("NG-12: u8 = %d\n",u8);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --u8;
  }
  if (u8) {
    printf("NG-13: u8 = %d\n",u8);
  }

  printf("pass\n");
  return 0;
}
