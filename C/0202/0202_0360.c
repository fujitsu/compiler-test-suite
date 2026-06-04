#include <stdio.h>
#include <omp.h>
int main()
{
  int i;
  long double comp20_r10 = 1.0;
  #pragma omp parallel for
  for (i=0 ; i<10 ; i++) {
    #pragma omp atomic
      comp20_r10++;
  }
  printf(" ### (%Lf)\n",comp20_r10);
}
