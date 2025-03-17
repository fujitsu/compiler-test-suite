#include <stdio.h>
int main() {
  struct t {
    signed long long int o1 : 33;
  } y;

#pragma omp parallel
  y.o1 = 1;

  if (y.o1 == 1)
    printf("ok\n");
  else
    printf("ng\n");
}
