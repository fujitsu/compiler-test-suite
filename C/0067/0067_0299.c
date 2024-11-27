#include <stdio.h>
#include <omp.h>

void sub01() {
  int i,s,a,n=3;
  s=1;
  i=0;
  a=0;
#pragma omp parallel for schedule(static,n) firstprivate(s) lastprivate(s,i)
  for (i=1; i<=10; i+=1) {
#pragma omp atomic
      a=a+s;
      if (i==10) s = i;
  }
  if (a != 10 || s != 10 || i != 11) {
    printf("sub01 ng\n");
    printf("a = %d\n", a);
    printf("s = %d\n", s);
    printf("i = %d\n", i);
  }
}


void sub02() {
  int i,s,a,n=3;
  s=1;
  i=0;
  a=0;
#pragma omp parallel
  {
#pragma omp for schedule(static,n) firstprivate(s) lastprivate(s,i)
    for (i=1; i<=10; i+=1) {
#pragma omp atomic
      a=a+s;
      if (i==10) s = i;
    }
  }
  if (a != 10 || s != 10 || i != 11) {
    printf("sub02 ng\n");
    printf("a = %d\n", a);
    printf("s = %d\n", s);
    printf("i = %d\n", i);
  }
}


void sub03() {
  static int i,s,a,n=3;
#pragma omp single
  {
  s=1;
  i=0;
  a=0;
  }
#pragma omp for schedule(static,n) firstprivate(s) lastprivate(s,i)
  for (i=1; i<=10; i+=1) {
#pragma omp atomic
    a=a+s;
    if (i==10) s = i;
  }
#pragma omp master
  {
    if (a != 10 || s != 10 || i != 11) {
      printf("sub03 ng\n");
      printf("a = %d\n", a);
      printf("s = %d\n", s);
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
