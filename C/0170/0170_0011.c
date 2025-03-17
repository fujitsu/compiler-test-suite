#include <stdio.h>


#define ANS 691350
#define NV  100
int main()
{
  double        tv1,tv2,tv3, dv;
  int           i;
  int           nv;
  double        a[NV],v1[NV],v2[NV],v3[NV];

  for (i=0;i<NV;i++) {
    a[i] = i;
    v1[i] = a[i];
    v2[i] = a[i]*a[i];
    v3[i] = a[i]+a[i];
  }
  tv1 = a[1];
  tv2 = a[2];
  tv3 = a[3];

  dv = 0.0;
  for (i=0;i<NV;i++) {
    dv += tv1*v1[i] + tv2*v2[i] + tv3*v3[i];
  }

  if ((int)dv == ANS)
    printf("OK\n");
  else
    printf("NG ... %lf\n",dv);

}
