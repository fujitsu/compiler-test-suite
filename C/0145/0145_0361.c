#include<stdio.h>
signed long long int incr() {
  return 1LL;
}
int main(void)
{
  long double buffer[11];
  long double *start, *end, *p;
  int cnt;
  signed long long int var1, var2;
  var1 = 1;
  var2 = 0;

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for
  for (p = start; p < end ; p+=(var1+var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1 ng: p+=(var1+var2): cnt=%d\n", cnt);
  }

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for
  for (p = start; p < end ; p=p+(var1+var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test2 ng: p=p+(var1+var2): cnt=%d\n", cnt);
  }

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for
  for (p = start; p < end ; p=(var1+var2)+p) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test3 ng: p=(var1+var2)+p: cnt=%d\n", cnt);
  }

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for
  for (p = start; p < end ; p+=incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test4 ng: p+=incr(): cnt=%d\n", cnt);
  }

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for
  for (p = start; p < end ; p=p+incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test5 ng: p=p+incr(): cnt=%d\n", cnt);
  }

  start = buffer;
  end = &buffer[10];
  cnt = 0;
#pragma omp parallel for
  for (p = start; p < end ; p=incr()+p) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test6 ng: p=incr()+p: cnt=%d\n", cnt);
  }

  printf("pass\n");
  return 0;
}
