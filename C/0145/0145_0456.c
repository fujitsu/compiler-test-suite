#include<stdio.h>
int incr() {
  return 1;
}
int main(void)
{
  unsigned int i;
  int cnt;
  int var1, var2;
  var1 = 1;
  var2 = 0;

  
  cnt = 0;
#pragma omp parallel for
  for (i = 0; i < 10; i+=(var1+var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-1 ng: i+=(var1+var2): cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel for
  for (i = 0; i < 10; i=i+(var1+var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-2 ng: i=i+(var1+var2): cnt=%d\n", cnt);
  }

#ifndef EXPR_PLUS_I
  cnt = 0;
#pragma omp parallel for
  for (i = 0; i < 10; i=(var1+var2)+i) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-3 ng: i=(var1+var2)+i: cnt=%d\n", cnt);
  }
#endif

  cnt = 0;
#pragma omp parallel for
  for (i = 0; i < 10; i+=incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-4 ng: i+=incr(): cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel for
  for (i = 0; i < 10; i=i+incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-5 ng: i=i+incr(): cnt=%d\n", cnt);
  }

#ifndef EXPR_PLUS_I
  cnt = 0;
#pragma omp parallel for
  for (i = 0; i < 10; i=incr()+i) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != 10) {
    printf("test1-6 ng: i=incr()+i: cnt=%d\n", cnt);
  }
#endif

  
  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 0; i < 10; i+=(var1+var2)) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-1 ng: i+=(var1+var2): cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 0; i < 10; i=i+(var1+var2)) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-2 ng: i=i+(var1+var2): cnt=%d\n", cnt);
  }

#ifndef EXPR_PLUS_I
  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 0; i < 10; i=(var1+var2)+i) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-3 ng: i=(var1+var2)+i: cnt=%d\n", cnt);
  }
#endif

  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 0; i < 10; i+=incr()) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-4 ng: i+=incr(): cnt=%d\n", cnt);
  }

  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 0; i < 10; i=i+incr()) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-5 ng: i=i+incr(): cnt=%d\n", cnt);
  }

#ifndef EXPR_PLUS_I
  cnt = 0;
#pragma omp parallel
  {
#pragma omp for
    for (i = 0; i < 10; i=incr()+i) {
#pragma omp atomic
      cnt++;
    }
  }
  if (cnt != 10) {
    printf("test2-6 ng: i=incr()+i: cnt=%d\n", cnt);
  }
#endif

  printf("pass\n");
  return 0;
}
