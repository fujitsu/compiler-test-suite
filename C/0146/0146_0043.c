
#include <stdio.h>
void sub01() {
  int a, x;
  a = 0;
  x = 1;
#pragma omp task if(a) shared(x)
  {
    x = 2;
  }
  if (x != 2) printf("error 101\n");
}

void sub02() {
  int x;
  x = 1;
#pragma omp task if(0) shared(x)
  {
    x = 2;
  }
  if (x != 2) printf("error 201\n");
}

void sub03() {
  int a, x;
  a = 0;
  x = 1;
#pragma omp task if(a==1) shared(x)
  {
    x = 2;
  }
  if (x != 2) printf("error 301\n");
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
