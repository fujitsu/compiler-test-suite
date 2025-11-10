#include <stdio.h>
#include <stdlib.h>

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
#define alloca my_alloca
#endif

static double *alloca();

int lto_sub_4() {
  int i,j;
  double *a, *asave;
  double **start;
  double *old;

  a = asave = alloca();
  for (i=0; i<100; ++i) {
    a[i] = (double)i;
  }
  old = a;
  ++a;
  for (i=1; i<100; ++i) {
    *a = *old + 1.0;
    old = a;
    ++a;
  }
  --a;
  if (*a==99.) {
    printf("ok\n");
  }
  else {
    printf("ng ... %lf\n",*a);
  }
  free(asave);
}

static double *alloca() {
  return (double *)malloc(100*sizeof(double));
}
