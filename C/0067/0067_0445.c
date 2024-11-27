#include<stdio.h>
int main(void)
{
  long double buffer[10];
  long double *start, *end, *p;
  int cnt;
  signed char incr;
  int n = 1;
  incr = 1;

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for schedule(static,n)
  for (p = start; p >= end; p-=incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1 ng: p-=incr: cnt=%d\n", cnt);
  }

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for schedule(static,n)
  for (p = start; p >= end ; p=p-incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test2 ng: p=p-incr: cnt=%d\n", cnt);
  }

  printf("pass\n");
  return 0;
}
