#include <omp.h>
#include <stdio.h>
void *deleted = 0;
void operator delete(void *p) { deleted = p; }
int main() {
  int x;
  char *q[2];
#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
  for (int i = 0; i < 2; ++i)
#pragma omp parallel
    q[i] = new char;
  char **p = &q[1];
#pragma omp parallel
  deleted = 0;

#pragma omp parallel
  delete *--p;

#pragma omp parallel
  x = q[0] >= deleted;
#pragma omp parallel
  if (x == 1)
#pragma omp parallel
    printf("ok\n");
  else
#pragma omp parallel
    printf("ng \n");
}
