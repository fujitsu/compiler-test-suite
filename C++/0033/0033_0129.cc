#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
extern "C" int a;
extern "C" {
int b;
}
extern "C" {
extern "C" int c;
}
int main() {
  b = 3;
  int work = 0, num = 1;
#pragma omp parallel
#pragma omp atomic
  work++;
#ifdef _OPENMP
  num = omp_get_max_threads();
#endif
  if (work == num)
    printf("ok\n");
  else
    printf("ng\n");
}
