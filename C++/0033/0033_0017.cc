#include <math.h>
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

static char echara[] = "bcde";
char *pca = echara;
int main() {
  int work = 0, num = 1;

  *(pca++) += 1;

#pragma omp parallel
  if (echara[0] == 'c')
#pragma omp parallel
#pragma omp atomic
    work++;
  else
    ;

#ifdef _OPENMP
  if (!omp_get_dynamic() && omp_get_nested()) {
    num = pow(omp_get_max_threads(), 2);
  } else if (omp_get_nested()) {
    num = pow(omp_get_max_threads(), 2);
    if (num > omp_get_num_procs()) {
      num = omp_get_num_procs();
    }
  } else {
    num = omp_get_max_threads();
  }
#endif

  if (num == work)
    printf("ok\n");
  else
    printf("ng\n");
}
