#include<stdio.h>
unsigned int incr() {
  return 1U;
}

int main(void)
{
  unsigned short i;
  int cnt;
  unsigned int var1, var2;
  var1 = 1;
  var2 = 0;

  
  cnt = 0;
#pragma omp parallel for
  for (i = 10; i > 0; i-=(var1+var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-1 ng: i-=(var1+var2): cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel for
  for (i = 10; i > 0; i=i-(var1+var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-2 ng: i=i-(var1+var2): cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel for
  for (i = 10; i > 0; i-=incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-3 ng: i-=incr(): cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel for
  for (i = 10; i > 0; i=i-incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-4 ng: i=i-incr(): cnt=%d\n", cnt);
  }

  
  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 10; i > 0; i-=(var1+var2)) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-1 ng: i-=(var1+var2): cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 10; i > 0; i=i-(var1+var2)) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-2 ng: i=i-(var1+var2): cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 10; i > 0; i-=incr()) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-3 ng: i-=incr(): cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 10; i > 0; i=i-incr()) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-4 ng: i=i-incr(): cnt=%d\n", cnt);
  }

  printf("pass\n");
  return 0;
}
