#include <stdio.h>
#include <omp.h>

void sub01() {
  int s, t, i, u;
  s = 0;
  t = 0;
  u = 1;
#pragma omp parallel for schedule(static,1) reduction(+:s,t) reduction(*:u)
  for (i=1; i<=10; i+=1) {
    s=s+i;
    t=t+i;
    u=u*i;
  }
  if (s != 55 || t != 55 || u != 3628800) {
    printf("s = %d\n", s);
    printf("t = %d\n", t);
    printf("u = %d\n", u);
  }
}


void sub02() {
  int s, t, i, u;
  s = 0;
  t = 0;
  u = 1;
#pragma omp parallel
  {
#pragma omp for schedule(static,1) reduction(+:s,t) reduction(*:u)
    for (i=1; i<=10; i+=1) {
      s=s+i;
      t=t+i;
      u=u*i;
    }
  }
  if (s != 55 || t != 55 || u != 3628800) {
    printf("s = %d\n", s);
    printf("t = %d\n", t);
    printf("u = %d\n", u);
  }
}


void sub03() {
  static int s, t, i, u;
#pragma omp single
  {
  s = 0;
  t = 0;
  u = 1;
  }
#pragma omp for schedule(static,1) reduction(+:s,t) reduction(*:u)
  for (i=1; i<=10; i+=1) {
    s=s+i;
    t=t+i;
    u=u*i;
  }
#pragma omp master
  {
    if (s != 55 || t != 55 || u != 3628800) {
      printf("s = %d\n", s);
      printf("t = %d\n", t);
      printf("u = %d\n", u);
    }
  }
}

int main() {
  sub01();
  sub02();
#pragma omp parallel
  {
    sub03();
  }
  printf("pass\n");
  return 0;
}
