#include<stdio.h>
int main(void)
{
  long double buffer[11];
  long double *start, *end, *p;
  int cnt;
  signed short incr;
  incr = 1;

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for
  for (p = start; p < end ; p+=incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1 ng: p+=incr: cnt=%d\n", cnt);
  }

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for
  for (p = start; p < end ; p=p+incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test2 ng: p=p+incr: cnt=%d\n", cnt);
  }

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for
  for (p = start; p < end ; p=incr+p) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test3 ng: p=incr+p: cnt=%d\n", cnt);
  }

  printf("pass\n");
  return 0;
}
