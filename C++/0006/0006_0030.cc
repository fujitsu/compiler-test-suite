#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <omp.h>


#define N	1024


void
do_by_x (int *x, int iam, int ipoints)
{
  int	i;


  for (i = 0;  i < ipoints;  i ++) {
    x[iam*ipoints + i] = iam;
  }
}



class test {
public:
test (int *x, int npoints, int thds, int num, ...)
{
  int	iam, ipoints;

  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  va_end( list );
  tmp++;

  omp_set_dynamic (0);
  omp_set_num_threads (thds);
#pragma omp parallel shared (x, npoints) private (iam, ipoints)
  {
    if (omp_get_num_threads () != thds)
      abort ();

    iam = omp_get_thread_num ();
    ipoints = npoints/thds;
    do_by_x(x, iam, ipoints);
  }
}
};



int
check (int *x, int npoints, int thds)
{
  int	i, j, ipoints;

  int	errors = 0;


  ipoints = npoints / thds;
  for (i = 0;  i < thds;  i ++) {
    for (j = 0  ;  j < ipoints;  j ++) {
      if (x[i * ipoints + j] != i) {
	errors += 1;
	printf ("omp_set_num_threads - expected x[%d] = %d, observed %d\n",
		i * ipoints + j, i, x[i * ipoints + j]);
      }
    }
  }

  for (i = thds * ipoints;  i < npoints;  i ++) {
    if (x[i] != -1) {
      errors += 1;
      printf ("omp_set_num_threads - expected x[%d] = %d, observed %d\n",
	      i, -1, x[i]);
    }
  }

  return errors;
}
int main()
{
  int	i, j, x[N], thds;

  int	errors = 0;


  thds = omp_get_max_threads ();
  for (i = 1;  i <= thds;  i ++) {
    for (j = 0;  j < N;  j ++) {
      x[j] = -1;
    }

    test O(x, N, i, 2, 3, 1);
    errors += check (x, N, i);
  }

  if (errors == 0) {
    printf ("omp_set_num_threads PASSED\n");
  } else {
    printf ("omp_set_num_threads FAILED\n");
  }
  exit(0);
}
