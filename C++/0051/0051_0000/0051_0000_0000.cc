#include <stdio.h>
int tp = 0;
#pragma omp threadprivate(tp)
void func(void) {
  tp += 1;
  if (tp != 1) printf("ng: tp=%d\n", tp);
}
