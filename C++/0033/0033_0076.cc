#include <stdio.h>
int main() {
  unsigned long long int ll;
  signed long long int sll;
  int work = 0;

#pragma omp parallel
  ll = (unsigned long long int)(long double)-0.9l;
#pragma omp parallel
  if (ll == 0)
#pragma omp parallel
    ;
  else {
#pragma omp parallel
#pragma omp atomic
    work++;
#pragma omp parallel
    printf("LL = %x\n", ll);
  }

  if (!work)
    printf("--- M3GLLU01 (01-20) OK ---\n");
  else
    printf("*** M3GLLU01 (01-20) NG ***\n");

  work = 0;
#pragma omp parallel
  sll = (signed long long int)(long double)-0.9l;
#pragma omp parallel
  if (sll == 0)
#pragma omp parallel
    ;
  else {
#pragma omp parallel
#pragma omp atomic
    work++;
#pragma omp parallel
    printf("LL = %x\n", sll);
  }

  if (!work)
    printf("--- M3GLLU01 (01-21) OK ---\n");
  else
    printf("*** M3GLLU01 (01-21) NG ***\n");
}
