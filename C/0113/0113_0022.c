#include <stdio.h>


#define ANS 676500
#define NV  100
int main()
{
  double        tv1,tv2,tv3;
  int           i;
  double        a[NV],v1[NV],v2[NV],v3[NV], dv[NV];
  double        sum;

  for (i=0;i<NV;i++) {
    a[i] = i;
    v1[i] = a[i];
    v2[i] = v1[i]*a[i];
    v3[i] = a[i];
    dv[i] = 0;
  }
  tv1 = a[1];
  tv2 = a[2];
  tv3 = a[3];

  for (i=0;i<NV;i++) {
    dv[i] += tv1*v1[i] + tv2*v2[i] + tv3*v3[i];
  }

  sum = 0.0;
  for (i=0;i<NV;i++) {
    sum = sum + dv[i];
  }

  if ((int)sum == ANS)
    printf("OK\n");
  else
    printf("NG ... %lf\n",sum);
}
