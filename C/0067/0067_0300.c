#include <stdio.h>
#include <omp.h>

void sub01() {
  int s, t, i, u, n=5;
  s = 0;
  t = 0;
  u = 1;
#pragma omp parallel for schedule(static,n) lastprivate(s,t,u,i)
  for (i=1; i<=10; i+=1) {
    s=i;
    t=i;
    u=i;
  }
  if (s != 10 || t != 10 || u != 10 || i != 11) {
    printf("s = %d\n", s);
    printf("t = %d\n", t);
    printf("u = %d\n", u);
    printf("i = %d\n", i);
  }
}


void sub02() {
  int s, t, i, u, n=5;
  s = 0;
  t = 0;
  u = 1;
#pragma omp parallel
  {
#pragma omp for schedule(static,n) lastprivate(s,t,u,i)
    for (i=1; i<=10; i+=1) {
      s=i;
      t=i;
      u=i;
    }
  }
  if (s != 10 || t != 10 || u != 10 || i != 11) {
    printf("s = %d\n", s);
    printf("t = %d\n", t);
    printf("u = %d\n", u);
    printf("i = %d\n", i);
  }
}


void sub03() {
  static int s, t, i, u, n=5;
#pragma omp single
  {
  s = 0;
  t = 0;
  u = 1;
  }
#pragma omp for schedule(static,n)  lastprivate(s,t,u,i)
  for (i=1; i<=10; i+=1) {
    s=i;
    t=i;
    u=i;
  }
#pragma omp master
  {
    if (s != 10 || t != 10 || u != 10 || i != 11) {
      printf("s = %d\n", s);
      printf("t = %d\n", t);
      printf("u = %d\n", u);
      printf("i = %d\n", i);
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
