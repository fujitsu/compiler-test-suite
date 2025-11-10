#include <stdio.h>
#include <stdlib.h>

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
#define alloca my_alloca
#endif

static double *alloca();

int lto_sub_3() {
  int i,j;
  double *a, *asave;
  a = asave = alloca();
  for (i=0; i<100; ++i) {
    a[i] = 0.;
  }
  for (i=1; i<100; ++i) {
    a[i] = a[i-1] + (double)i;
  }
  if (a[30]==465.) {
    printf("ok\n");
  }
  else {
    printf("ng ... %lf\n",a[30]);
  }
  free(asave);
}

static double *alloca() {
  return (double *)malloc(100*sizeof(double));
}
