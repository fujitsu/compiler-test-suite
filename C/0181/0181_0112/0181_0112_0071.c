#include <stdio.h>
static void foo(float *pc1, const float *pc2, const float *pc3, const float *pm) {
  int i;
  for(i=0; i<65; ++i) {
    pc1[i] = (pm[i] > (float)0 ) ? pc2[i]+pc3[i] : pc1[i]+1;
  }
  if (pc1[i-1] == 131) {
    printf("ok\n");
  }
}

int lto_sub_71 (void)
{
  float pc1[65],pc2[65],pc3[65];
  float pm[65];
  int i;
  for (i=0; i<65; ++i) {
    pc1[i] = i;
    pc2[i] = i+1;
    pc3[i] = i+2;
    pm[i] = i;
  }
  foo(pc1, pc2, pc3,pm);
}
