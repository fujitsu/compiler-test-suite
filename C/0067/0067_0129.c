#include<stdio.h>
int main(void)
{
  long double buffer[10];
  long double *start, *end, *p;
  int cnt;

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p >= end ; --p) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1 ng: --p: cnt=%d\n", cnt);
  }

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p >= end ; p--) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test2 ng: p--: cnt=%d\n", cnt);
  }

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p >= end ; p-=1) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test3 ng: p-=1: cnt=%d\n", cnt);
  }

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p >= end ; p=p-1) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test4 ng: p=p-1: cnt=%d\n", cnt);
  }
  printf("pass\n");

  return 0;
}
