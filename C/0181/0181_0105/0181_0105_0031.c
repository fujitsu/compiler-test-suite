#include <stdio.h>


int lto_sub_31(void)
{
  int i;
  double a[100]={1.0};
  double b[100]={1.0};

#pragma loop unroll (1)
  for (i=1; i<100; i++) {
    a[i]=a[i-1]+a[i-1]/2.+1.;
  }
#pragma loop unroll (4)

  for (i=1; i<100; i++) {
    b[i]=b[i-1]+b[i-1]/2.+1.;
  }

  for (i=1; i<100; i++) {
    fprintf(stdout, "%f ", a[i]);
    if (a[i] != b[i]) {
      fprintf(stdout, "\nNG: %d %f %f\n", i, a[i], b[i]);
      return 1;
    }
  }
  fprintf(stdout, "\nOK\n");
  return 0;
}
