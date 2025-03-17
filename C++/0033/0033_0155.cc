#include <stdio.h>

int f(int a, int b = 0) { return a + b; }

int g(int a, int b) { return a + b; }

int g(int a) { return g(a, 0); }
int main() {
  int work = 0;
#pragma omp parallel
  if (f(2) == 2 && g(2) == 2 && f(3, 5) == 8 && g(3, 5) == 8)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if (!work)
    printf("ok\n");
  else
    printf("ng\n");
}
