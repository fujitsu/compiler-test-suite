#include<stdio.h>
int main(void)
{
  long double buffer[11];
  long double *start, *end, *p;
  int cnt;

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for
  for (p = start; p < end ; ++p) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1 ng: ++p: cnt=%d\n", cnt);
  }

  printf("pass\n");
  return 0;
}
