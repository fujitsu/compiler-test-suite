#include <stdio.h>


#define ANS 73537200
#define NV  100
int main()
{
  double        tv1,tv2,tv3, sum;
  int           i;
  int           nv;
  double        dv[NV],a[NV],v1[NV],v2[NV],v3[NV],v4[NV];

  for (i=0;i<NV;i++) {
    a[i] = i;
    v1[i] = a[i];
    v2[i] = a[i]*a[i];
    v3[i] = a[i];
    v4[i] = a[i]+a[i];
    dv[i] = 0;
  }
  tv1 = a[1];
  tv2 = a[2];
  tv3 = a[3];

  for (i=0;i<NV;i++) {
    dv[i]+=tv1*v1[i]*v2[i] + tv2*v2[i]*v3[i] + tv3*v4[i];
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
