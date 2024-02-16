#include <math.h>
#include <stdio.h>
int main()
{
  double a,b,c,d,res;
  double x[10],y[10]={0,1,2,3,4,5,6,7,8,9};
  int i;

  res = log(1);

  for(i=0;i<10;i++) {
    a = i+1;
    b = i+1;
    c = i+1;
    if (a != 0) goto label;
    label:;
    d = log(b/c);
    x[i] = d;
  }

  for(i=0;i<10;i++)  {
    if (x[i] != res) {
      printf("ng %f %f \n",x[i],res);
    }
  }
  printf("ok\n");

  return 0;
}
