#include<stdio.h>
int main(void)
{
  unsigned char i;
  int cnt;

  
  cnt = 0;
#pragma omp parallel for
  for (i = 10; i > 0; i-=1U) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-1 ng: i-=1U: cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel for
  for (i = 10; i > 0; i=i-1U) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-2 ng: i=i-1U: cnt=%d\n", cnt);
  }

  
  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 10; i > 0; i-=1U) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-1 ng: i-=1U: cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 10; i > 0; i=i-1U) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-2 ng: i=i-1U: cnt=%d\n", cnt);
  }

  printf("pass\n");
  return 0;
}
