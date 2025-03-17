#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main() {
  static char str[5] = "abcd";
  char *p = str;
  int work = 0;

#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
  if (*p++ == 'a' && *p++ == 'b' && *p++ == 'c' && *p++ == 'd' && *p == '\0')
#pragma omp parallel
    ;
  else
#pragma omp parallel
    work++;

  if (!work)
    printf("ok\n");
  else
    printf("ng\n");
}
