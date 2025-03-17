#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
struct A {
  int a;
} *A;

typedef struct zzz {
  struct A *A;
} ZZZ;

typedef struct yyy {
  struct B {
    int b;
  } *B;
} YYY;

struct xxx {
  struct C {
    int c;
  } *C;
};
int main() {
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
  return 1;
}
