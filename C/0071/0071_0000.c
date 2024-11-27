#include <stdio.h>
#include <stdlib.h>

#define VERBOSE
int main()
{
  int	cnd1, cnd2;

  int	errors = 0;


  cnd1 = 0;
  cnd2 = 0;

#ifdef _OPENMP
  cnd1 = 1;
#endif

#if defined (_OPENMP) && defined (VERBOSE)
  cnd2 = 1;
#endif

  if (cnd1 != 1 || cnd2 != 1) {
    errors += 1;
    printf ("not defined _OPENMP.\n");
  }

  if (errors == 0) {
    printf ("conditional complilation PASSED\n");
  } else {
    printf ("conditional complilation FAILED\n");
  }
  exit(0);
}
