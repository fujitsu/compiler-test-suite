#include <stdio.h>
#include <stdlib.h>

int lto_sub_2() {
  int i,j;
  double *a;
  a = (double *)malloc(100*sizeof(double));
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
  free(a);
}
