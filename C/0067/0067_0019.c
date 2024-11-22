#include<stdio.h>
int main(void)
{
  signed char i;
  int cnt;

  
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (i = 0; i < 10; i+=1ULL) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-1 ng: i+=1ULL: cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (i = 0; i < 10; i=i+1ULL) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-2 ng: i=i+1ULL: cnt=%d\n", cnt);
  }

#ifndef CNT_PLUS_I
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (i = 0; i < 10; i=1ULL+i) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-3 ng: i=1ULL+i: cnt=%d\n", cnt);
  }
#endif

  
  cnt = 0;
#pragma omp parallel
  {
#pragma omp for schedule(static,1)
    for (i = 0; i < 10; i+=1ULL) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-1 ng: i+=1ULL: cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel
  {
#pragma omp for schedule(static,1)
    for (i = 0; i < 10; i=i+1ULL) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-2 ng: i=i+1ULL: cnt=%d\n", cnt);
  }

#ifndef CNT_PLUS_I
  cnt = 0;
#pragma omp parallel
  {
#pragma omp for schedule(static,1)
    for (i = 0; i < 10; i=1ULL+i) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-3 ng: i=1ULL+i: cnt=%d\n", cnt);
  }
#endif

  printf("pass\n");
  return 0;
}