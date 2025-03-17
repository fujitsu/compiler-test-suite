#include <stdio.h>
inline void *operator new(size_t, void *p) {
  printf("ng\n");
  return p;
}
void f() {
  int *i;
#pragma omp parallel
  ::operator new(1);
}
int main() {
#pragma omp parallel
  f();

  printf("ok\n");
}
