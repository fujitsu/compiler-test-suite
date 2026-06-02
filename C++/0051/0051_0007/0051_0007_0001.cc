#include <omp.h>
#include <stdio.h>
extern int iii;
extern double ddd[2];
#pragma omp threadprivate(iii, ddd)
int main() {
#pragma omp parallel
  {
    iii = omp_get_thread_num();
    ddd[0] = omp_get_thread_num();
    ddd[1] = omp_get_thread_num();
  }
#pragma omp parallel
  {
    if (iii != omp_get_thread_num())
      printf("ng001\n");
    if (ddd[0] != omp_get_thread_num())
      printf("ng002\n");
    if (ddd[1] != omp_get_thread_num())
      printf("ng003\n");
  }
  printf("pass\n");
  return 0;
}
