#include <stdio.h>
#include <stdlib.h>
#include <omp.h>


#define	N	1024


int	m[N];
int	s = 1;


void
test ()
{


#pragma omp parallel default(none)shared(m,s)
  {
    int	i = omp_get_thread_num ();

    m[i] = s;
  }
}
int main()
{
  int	thds, i;
  
  int	errors = 0;


  test ();

  thds = omp_get_max_threads ();
  for (i=0;  i<thds;  i++) {
    if (m[i] != s) {
      errors += 1;
      printf ("default(none) - expected m[%d] = %d, observed %d\n",
	      i, s, m[i]);
    }
  }

  if (errors == 0) {
    printf ("default(none) PASSED\n");
  } else {
    printf ("default(none) FAILED\n");
  }
}
