#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int a = 0, b = 0;

enum EN { en0, en1 } en = en1;
enum { em0, em1 };

void f(int);
void f(EN);
int main() {
#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
  f(0);

#pragma omp parallel
  if (a == 1 && b == 0)
#pragma omp parallel
    f(en0);

#pragma omp parallel
  if (a == 1 && b == 1)
#pragma omp parallel
    f(en1 + 2);

#pragma omp parallel
  if (a == 5 && b == 1)
#pragma omp parallel
    f(en);

#pragma omp parallel
  if (a == 5 && b == 3)
#pragma omp parallel
    f(em0);

#pragma omp parallel
  if (a == 6 && b == 3)
#pragma omp parallel
    printf("ok\n");
  else
#pragma omp parallel
    printf("ng\n");
}

void f(int i) {
  a++;
  a += i;
}

void f(EN en) {
  b++;
  b += en;
}
