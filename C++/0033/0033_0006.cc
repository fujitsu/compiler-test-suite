#include <stdio.h>
int main() {
  int i;
#pragma omp parallel
  if (i)
    ;
#pragma omp parallel
  if (1)
    ;
#pragma omp parallel
  if (0)
    ;
#pragma omp parallel
  if (1)
    ;
  else
    ;
#pragma omp parallel
  if (0)
    ;
  else
    ;
  printf("ok\n");
}
