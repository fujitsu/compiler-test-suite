#include<stdio.h>
int main(void)
{
  long double buffer[10];
  long double *start, *end, *p;
  int cnt;

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for
  for (p = start; p >= end ; p-=1U) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1 ng: p-=1U: cnt=%d\n", cnt);
  }

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for
  for (p = start; p >= end ; p=p-1U) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test2 ng: p=p-1U: cnt=%d\n", cnt);
  }
  printf("pass\n");

  return 0;
}
