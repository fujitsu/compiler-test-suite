


#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  char  ch  = 0,
        a   = 5,
        max = 1;

#ifdef _OPENMP
  max = omp_get_max_threads();
  if (max > 6) {
    max = 6;
    omp_set_num_threads(6);
  }
#endif

#pragma omp parallel
  {
#pragma omp atomic
    ch+=10-a;
  }
  if (ch != (10-a)*max) {
    printf("NG-01: ch = %d\n",ch);
  }

#pragma omp parallel
 {
#pragma omp atomic
   ch-=a;
 }
  if (ch) {
    printf("NG-02: ch = %d\n",ch);
  }

  ch = 1;
#pragma omp parallel
  {
#pragma omp atomic
   ch*=2;
  }
  if (ch != pow(2,max)) {
    printf("NG-03: ch = %d\n",ch);
  }

#pragma omp parallel
  {
#pragma omp atomic
   ch/=2;
  }
  if (ch != 1) {
    printf("NG-04: ch = %d\n",ch);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ch&=1;
  }
  if (ch != 1) {
    printf("NG-05: ch = %d\n",ch);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ch^=1;
  }
  if (ch == max%2) {
    printf("NG-06: ch = %d\n",ch);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ch|=1;
  }
  if (ch != 1) {
    printf("NG-07: ch = %d\n",ch);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ch<<=1;
  }
  if (ch != 1<<max) {
    printf("NG-08: ch = %d\n",ch);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ch>>=1;
  }
  if (ch != 1) {
    printf("NG-09: ch = %d\n",ch);
  }

  ch=0;
#pragma omp parallel
  {
#pragma omp atomic
    ch++;
  }
  if (ch != max) {
    printf("NG-10: ch = %d\n",ch);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ch--;
  }
  if (ch) {
    printf("NG-11: ch = %d\n",ch);
  }

#pragma omp parallel
  {
#pragma omp atomic
    ++ch;
  }
  if (ch != max) {
    printf("NG-12: ch = %d\n",ch);
  }

#pragma omp parallel
  {
#pragma omp atomic
    --ch;
  }
  if (ch) {
    printf("NG-13: ch = %d\n",ch);
  }

  printf("pass\n");
  return 0;
}
