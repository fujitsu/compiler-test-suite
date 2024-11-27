#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

#define	N	1024

int	x[N];
int	y[N];


int *
dequeue (int a[])
{
  int	*ret;

  ret   = &a[a[0]];
  a[a[0]] = 1;
  a[0] += 1;

  return ret; 
}


void
work (int *a)
{
  *a += 1;
}


void
critical (int x[], int y[])
{
  int	*x_next, *y_next;


#pragma omp parallel  shared(x,y) private(x_next, y_next)
  {
#pragma omp critical(xaxis)
    x_next = dequeue (x);
    work (x_next);
#pragma omp critical(yaxis)
    y_next = dequeue (y);
    work (y_next);
  }
}
int main()
{
  int	i;

  int	errors = 0;
  int	thds;


  for (i = 1;  i < N;  i ++) {
    x[i] = -1;
    y[i] = -1;
  }
  x[0] = 1;
  y[0] = 10;


  critical (x, y);


  thds = omp_get_max_threads ();
  for (i = 1;  i < N;  i ++) {
    if ((x[0] - thds <= i) && (i < x[0])) {
      if (x[i] != 2) {
	errors += 1;
	printf ("critical - expected x[%d] = %d, observed %d\n",
		i, 2, x[i]);
      }
    } else {
      if (x[i] != -1) {
	errors += 1;
	printf ("critical - expected x[%d] = %d, observed %d\n",
		i, -1, x[i]);
      }
    }

    if ((y[0] - thds <= i) && (i < y[0])) {
      if (y[i] != 2) {
	errors += 1;
	printf ("critical - expected y[%d] = %d, observed %d\n",
		i, 2, y[i]);
      }
    } else {
      if (y[i] != -1) {
	errors += 1;
	printf ("critical - expected y[%d] = %d, observed %d\n",
		i, -1, y[i]);
      }
    }
  }


  if (errors == 0) {
    printf ("critical PASSED\n");
  } else {
    printf ("critical FAILED\n");
  }
  exit(0);
}
