#include<stdio.h>
int main(void)
{
  long double buffer[11];
  long double *start, *end, *p;
  int cnt;

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p < end ; p+=1U) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1 ng: p+=1U: cnt=%d\n", cnt);
  }

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p < end ; p=p+1U) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test2 ng: p=p+1U: cnt=%d\n", cnt);
  }

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p < end ; p=1U+p) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test3 ng: p=1U+p: cnt=%d\n", cnt);
  }

  printf("pass\n");
  return 0;
}
