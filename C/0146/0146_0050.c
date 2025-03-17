
#include <stdio.h>
#include <omp.h>
void sub01() {
  int a, b, x;
  a = 0;
  b = 1;
  x = 1;
#pragma omp task if(a) final(b) shared(x)
  {
    if (!omp_in_final()) printf("error 102\n");
#pragma omp task shared(x)
    {
      if (!omp_in_final()) printf("error 103\n");
      x = 2;
    }
    if (x != 2) printf("error 101\n");
  }
}

void sub02() {
  int x;
  x = 1;
#pragma omp task if(0) final(1) shared(x)
  {
    if (!omp_in_final()) printf("error 202\n");
#pragma omp task shared(x)
    {
      if (!omp_in_final()) printf("error 203\n");
      x = 2;
    }
    if (x != 2) printf("error 201\n");
  }
}

void sub03() {
  int a, b, x;
  a = 0;
  b = 1;
  x = 1;
#pragma omp task if(a==1) final(b==1) shared(x)
  {
    if (!omp_in_final()) printf("error 302\n");
#pragma omp task shared(x)
    {
      if (!omp_in_final()) printf("error 303\n");
      x = 2;
    }
    if (x != 2) printf("error 301\n");
  }
}

int main() {
#pragma omp parallel
  {
    sub01();
    sub02();
    sub03();
  }
  printf("pass\n");
  return 0;
}
