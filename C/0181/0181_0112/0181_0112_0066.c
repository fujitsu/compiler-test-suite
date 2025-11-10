#include <stdio.h>
static void foo(double *pc1, const double *pc2, const double *pc3, const double *pm) {
  int i;
  for(i=0; i<65; ++i) {
    if (pm[i] > (double)0) {
      pc1[i] = pc2[i] + pc3[i];
    }
  }
  if (pc1[i-1] == 131) {
    printf("ok\n");
  }
}

int lto_sub_66()
{
  double pc1[65],pc2[65],pc3[65],pm[65];
  int i;
  for (i=0; i<65; ++i) {
    pc1[i] = i;
    pc2[i] = i+1;
    pc3[i] = i+2;
    pm[i] = i;
  }
  foo(pc1, pc2, pc3,pm);
}
