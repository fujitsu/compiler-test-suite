#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
long long int lli;
long long int lli2;
long long int lli3;
int main()
{
  long long int c_lli;
  long long int c_lli2;
  long long int c_lli3;

#pragma omp parallel
  lli = 1;
#pragma omp parallel
  lli2 = 10;
#pragma omp parallel
  lli3 = 20;

#ifdef _OPENMP
  c_lli  = lli + omp_get_max_threads();
  c_lli2 = lli2 - omp_get_max_threads();
  c_lli3 = lli3 - omp_get_max_threads();
#else
  c_lli  = 2;
  c_lli2 = 9;
  c_lli3 = 19;
#endif

#pragma omp parallel
#pragma omp atomic
  lli++;
#pragma omp parallel
#pragma omp atomic
  --lli2;
#pragma omp parallel
#pragma omp atomic
  lli3--;

  if (lli == c_lli && lli2 == c_lli2 && lli3 == c_lli3)
    printf("ok\n");
  else
    printf("%lld, %lld, %lld\n", lli, lli2, lli3);
}
