#include <math.h>
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

class Ctag {
public:
  int a;
};

void func(class Ctag *);
int main() {
  class Ctag *p = new Ctag;
  int work = 2;
#ifdef _OPENMP
  if (!omp_get_dynamic() && omp_get_nested()) {
    work = pow(omp_get_max_threads(), 2) + 1;
  } else if (omp_get_nested()) {
    if (omp_get_num_procs() < pow(omp_get_max_threads(), 2) + 1) {
      work = omp_get_num_procs() + 1;
    } else {
      work = pow(omp_get_max_threads(), 2) + 1;
    }
  } else {
    work = omp_get_max_threads() + 1;
  }
#endif
#pragma omp parallel
  p->a = 1;
#pragma omp parallel
  func(p);

  if (p->a == work)
    printf("ok\n");
  else
    printf("ng\n");

  delete p;
}

void func(class Ctag *p) {
#pragma omp parallel
#pragma omp atomic
  (p->a)++;
}
