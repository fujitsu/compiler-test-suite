#include <math.h>
#include <stdio.h>
int main()
{
  float a,b,c,d,res;
  float x[10];
  int i;

  res = sinf(1)+cosf(1);

  for(i=0;i<10;i++) {
    a = i+1;
    b = i+1;
    c = i+1;
    if (a != 0) goto label;
    label:;
    d = sinf(b/c)+cosf(b/c);
    x[i] = d;
  }

  for(i=0;i<10;i++)  {
    if (fabsf(x[i] - res)/fabsf(x[i]) >= 1.0e-6f) {
      printf("ng %f %f \n",x[i],res);
      return 0;
    }
  }
  printf("ok\n");

  return 0;
}
