#include <math.h>
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

struct {
  char c;
  signed char sc : 1;
  signed short ss : 1;
  signed int si : 1;
  signed long long sll : 1;
  unsigned char uc : 1;
  unsigned short us : 1;
  unsigned int ui : 1;
  unsigned long long ull : 1;
} x;

int work = 0;

void f1() {
  long i;
  long ll;

#pragma omp parallel
  x.sc = 3;
#pragma omp parallel
  i = x.sc;

#pragma omp parallel
  if (i != ~0) {
#pragma omp parallel
    printf("ng %d\n", __LINE__);
#pragma omp parallel
    printf("%d\n", i);
#pragma omp parallel
    printf("%d\n", x.sc);
  } else
#pragma omp atomic
    work++;
}
int main() {
  int num = 1;
#pragma omp parallel
  f1();

#ifdef _OPENMP
  if (!omp_get_dynamic() && omp_get_nested()) {
    num = pow(omp_get_max_threads(), 2);
  } else if (omp_get_nested()) {
    if (omp_get_num_procs() < pow(omp_get_max_threads(), 2)) {
      num = omp_get_num_procs();
    } else {
      num = pow(omp_get_max_threads(), 2);
    }
  } else {
    num = omp_get_max_threads();
  }
#endif

  if (num == work)
    printf("ok\n");
  else
    printf("ng:work=%d:num=%d\n", work, num);
}
