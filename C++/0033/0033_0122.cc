#include <stdio.h>

int max(int a, int b) { return (a < b) ? b : a; }
int main() {
  int a = 1, b = a + 1;
  int work = 0;

#pragma omp parallel
  if (max(a, b) == b)
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
