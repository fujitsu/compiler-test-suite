#include <stdio.h>

int a = 0;
int main() {
  int work = 0;
#pragma omp parallel
  if (a == 0)
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
