
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int i,j=0;
  int num_threads;
  char *omp_num_threads;

  omp_num_threads = getenv("OMP_NUM_THREADS");
  if (omp_num_threads == NULL) {
    printf("0000000000\nOK\n");
    return 0;
  }
  num_threads = atoi(omp_num_threads);
  if (num_threads > 1) {
    printf("0000000000\nOK\n");
    return 0;
  }

#pragma omp parallel private(i)
  {
    for(i=0; i<10; i++)
      {
#pragma omp single
#pragma omp parallel
	{
	}
      }
    for(i=0; i<10; i++)
      {
	printf("%d",j);
      }
  }
  printf("\nOK\n");
  return 0;
}
