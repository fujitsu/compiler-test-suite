#include <stdio.h>
int i10 = 10;
int i20 = 20;
int main() {
  int i = i10;
  volatile int iv = i20;
  volatile int *piv = &i;
  int *pi;

#pragma omp parallel
  pi = (int *)piv;
#pragma omp parallel
  *pi = i10 + 5;
#pragma omp parallel
  if (*pi == 15 && i == 15)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng %d\n", i);

#pragma omp parallel
  pi = (int *)&iv;
#pragma omp parallel
  *pi = i20 + 5;

#pragma omp parallel
  if (*pi == 25 && iv == 25 && pi == (int *)&iv)
#pragma omp parallel
    ;
  else {
#pragma omp parallel
    printf("ng %d %d\n", *pi, iv);
#pragma omp parallel
    printf("pi=%x &iv=%x \n", pi, &iv);
  }

  printf("ok\n");
}
