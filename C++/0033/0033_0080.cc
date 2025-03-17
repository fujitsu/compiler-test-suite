#include <stdio.h>
int i10 = 10;
int i20 = 20;
int main() {
  int i = i10;
  const int ic = i20;
  const int *pic = &i;
  int *pi;

#pragma omp parallel
  pi = (int *)pic;
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
  pi = (int *)&ic;
#pragma omp parallel
  *pi = i20 + 5;

#pragma omp parallel
  if (*pi == 25 && ic == 25)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng %d %d\n", *pi, ic);

  printf("ok\n");
}
