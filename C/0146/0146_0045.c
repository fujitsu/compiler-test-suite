
#include <stdio.h>
void sub01() {
  char a;
  int x;
  a = 0;
  x = 1;
#pragma omp task if(a) shared(x)
  {
    x = 2;
  }
  if (x != 2) printf("error 101\n");
}

void sub02() {
  char a;
  int x;
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
  }
  printf("pass\n");
  return 0;
}
