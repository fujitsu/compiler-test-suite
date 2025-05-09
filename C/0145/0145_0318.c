#include<stdio.h>
int main(void)
{
  signed long long i;
  int cnt;
  signed long long int incr;
  incr = 1;

  
  cnt = 0;
#pragma omp parallel for
  for (i = 10; i > 0; i-=incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-1 ng: i-=incr: cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel for
  for (i = 10; i > 0; i=i-incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-2 ng: i=i-incr: cnt=%d\n", cnt);
  }

  
  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 10; i > 0; i-=incr) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-1 ng: i-=incr: cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 10; i > 0; i=i-incr) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-2 ng: i=i-incr: cnt=%d\n", cnt);
  }

  printf("pass\n");
  return 0;
}
