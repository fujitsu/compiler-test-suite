#include <stdio.h>
int work = 0;
void func2(void *&r) {
#pragma omp parallel
#pragma omp atomic
  work++;
}
void func2(void *const &r) {
#pragma omp parallel
  ;
}
int main() {
  int a = 10;
  int *p = &a;
#pragma omp parallel
  func2(p);

  if (!work)
    printf("ok\n");
  else
    printf("ng\n");
}
