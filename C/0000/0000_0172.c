#include <stdio.h>
#include <math.h>
int main()
{
  int i;
  float a[65],b[65];
  double x[65],y[65];
  for(i=0;i<65;i++) {
     a[i] =  0.0;
     b[i] = -0.0;
  }

#pragma loop nounroll  
  for(i=0;i<65;i++) {
    if (a[i] != 0.0 || copysignf(1.0, b[i]) != -1.0) {
      printf("NG(float) %d: %f %f \n",i,a[i],b[i]);
    }
  }

  for(i=0;i<65;i++) {
    x[i] =  0.0;
    y[i] = -0.0;
  }

#pragma loop nounroll  
  for(i=0;i<65;i++) {
    if (a[i] != 0.0 || copysign(1.0, y[i]) != -1.0) {
      printf("NG(double)  %d: %f %f \n",i,x[i],y[i]);
    }
  }

  printf("ok\n");
  return 0;
}
