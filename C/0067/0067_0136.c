#include<stdio.h>
unsigned long long int incr() {
  return 1ULL;
}
int main(void)
{
  long double buffer[10];
  long double *start, *end, *p;
  int cnt;
  unsigned long long int var1, var2;
  var1 = 1;
  var2 = 0;

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p >= end; p-=(var1+var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1 ng: p-=(var1+var2): cnt=%d\n", cnt);
  }

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p >= end ; p=p-(var1+var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test2 ng: p=p-(var1+var2): cnt=%d\n", cnt);
  }

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p >= end; p-=incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test3 ng: p-=incr(): cnt=%d\n", cnt);
  }

  start = &buffer[9];
  end = buffer;
  cnt = 0;
#pragma omp parallel for schedule(static,1)
  for (p = start; p >= end ; p=p-incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test4 ng: p=p-incr(): cnt=%d\n", cnt);
  }

  printf("pass\n");
  return 0;
}
