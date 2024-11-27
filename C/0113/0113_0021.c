#include <stdio.h>


#define ANS 49005000
#define NV  100
int main()
{
  int           i;
  double        a[NV],dv[NV],v1[NV],v2[NV],v3[NV],v4[NV];
  double        sum;

  for (i=0;i<NV;i++) {
    a[i] = i;
    v1[i] = a[i];
    v2[i] = a[i]*a[i];
    v3[i] = v1[i];
    v4[i] = a[i]*v1[i];
    dv[i] = 0;
  }

  for (i=0;i<NV;i++) {
    dv[i] += v2[i]*v1[i] + v4[i]*v3[i];
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
