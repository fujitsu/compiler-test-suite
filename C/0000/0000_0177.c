#include <math.h>
#include <stdio.h>
int main()
{
  double a,b,c,d,res;
  double x[10],y[10]={0,1,2,3,4,5,6,7,8,9};
  int i;

  res = atan(1);

  for(i=0;i<10;i++) {
    a = i+1;
    b = i+1;
    c = i+1;
    if (a != 0) goto label;
    label:;
    d = atan(b/c);
    x[i] = d;
  }

  for(i=0;i<10;i++)  {
    if (fabs(x[i] - res)/fabs(x[i]) >= 1.0e-6f) {
      printf("ng %f %f \n",x[i],res);
      return 0;
    }
  }
  printf("ok\n");


  return 0;
}
