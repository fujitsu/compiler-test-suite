#include <stdio.h>
#include <stdlib.h>
#include <omp.h>


#define	N	1024

int	x[N], y[N];


void
work (int i)
{
  x[i] = i;
}


void
work2 (int i)
{
  y[i] = i;
}


void
test1 ()
{
  int	i, np;


  np = omp_get_num_threads ();
#pragma omp parallel for schedule(static)
  for (i=0;  i<np;  i++) {
    work (i);
  }
}


void
test2 ()
{
  int	i;


#pragma omp parallel private(i)
  {
    i = omp_get_thread_num ();
    work2 (i);
  }
}
int main()
{
  int	i, thds, mthds;

  int	errors = 0;


  mthds = omp_get_max_threads ();
  for (thds = 1;  thds < mthds;  thds ++) {

    omp_set_num_threads (thds);
    for (i=0;  i<N;  i++) {
      x[i] = -1;
      y[i] = -1;
    }

    test1 ();
    test2 ();

    if (x[0] != 0) {
      errors += 1;
      printf ("omp_get_thread_num - expected x[%d] = %d, observed %d\n",
	      0, 0, x[0]);
    }
    for (i=1;  i<N;  i++) {
      if (x[i] != -1) {
	errors += 1;
	printf ("omp_get_thread_num - expected x[%d] = %d, observed %d\n",
		i, -1, x[i]);
      }
    }

    for (i=1;  i<thds;  i++) {
      if (y[i] != i) {
	errors += 1;
	printf ("omp_get_thread_num - expected y[%d] = %d, observed %d\n",
		i, i, y[i]);
      }
    }
    for (i=thds;  i<N;  i++) {
      if (y[i] != -1) {
	errors += 1;
	printf ("omp_get_thread_num - expected y[%d] = %d, observed %d\n",
		i, -1, y[i]);
      }
    }
  }

  if (errors == 0) {
    printf ("omp_get_thread_num : PASSED\n");
  } else {
    printf ("omp_get_thread_num : FAILED\n");
  }
  exit(0);
}
