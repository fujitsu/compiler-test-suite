#include<stdio.h>
int main(void)
{
  unsigned long long i;
  int cnt;
  signed char incr;
  incr = 1;

  
  cnt = 0;
#pragma omp parallel for
  for (i = 0; i < 10; i+=incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-1 ng: i+=incr: cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel for
  for (i = 0; i < 10; i=i+incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-2 ng: i=i+incr: cnt=%d\n", cnt);
  }

#ifndef VAR_PLUS_I
  cnt = 0;
#pragma omp parallel for
  for (i = 0; i < 10; i=incr+i) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-3 ng: i=incr+i: cnt=%d\n", cnt);
  }
#endif

  
  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 0; i < 10; i+=incr) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-1 ng: i+=incr: cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 0; i < 10; i=i+incr) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-2 ng: i=i+incr: cnt=%d\n", cnt);
  }

#ifndef VAR_PLUS_I
  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 0; i < 10; i=incr+i) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-3 ng: i=incr+i: cnt=%d\n", cnt);
  }
#endif

  printf("pass\n");
  return 0;
}
