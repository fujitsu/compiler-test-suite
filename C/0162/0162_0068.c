#include <stdio.h>
void foo(double *pc1, const double *pc2, const double *pc3, const int *pm) {
  int i;
  for(i=0; i<65; ++i) {
    if (pm[i] > (int)0) {
      pc1[i] = pc2[i] + pc3[i];
    }
  }
  if (pc1[i-1] == 131) {
    printf("ok\n");
  }
}

int main()
{
  double pc1[65],pc2[65],pc3[65];
  int i,pm[65];
  for (i=0; i<65; ++i) {
    pc1[i] = 0;
    pc2[i] = i+1;
    pc3[i] = i+2;
    pm[i] = i;
  }
  foo(pc1, pc2, pc3,pm);
}
