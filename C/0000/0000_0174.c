#include <stdio.h>
#include <math.h>
int main()
{
  int i;
  float a[65],b[65],mask1[65];
  double x[65],y[65],mask2[65];

  for(i=0;i<65;i++){
    if (i<30) {
      mask1[i] = 1;
      mask2[i] = 0;
    } else {
      mask1[i] = 0;
      mask2[i] = 1;
    }
  }
  
  for(i=0;i<65;i++) {
    if (mask1[i] == 0) {
      a[i] =  0.0;
      b[i] = -0.0;
    } else {
      a[i] = -0.0;
      b[i] =  0.0;
    }
  }

#pragma loop nounroll  
  for(i=0;i<65;i++) {
    if (mask1[i] == 0) {
      if (copysignf(1.0, a[i]) != 1.0 || copysignf(1.0, b[i]) != -1.0) {
	printf("NG(float) %d: %f %f \n",i,a[i],b[i]);
      }
    } else {
      if (copysignf(1.0, a[i]) != -1.0 || copysignf(1.0, b[i]) != 1.0) {
	printf("NG(float) %d: %f %f \n",i,a[i],b[i]);
      }
    }
  }

  for(i=0;i<65;i++) {
    if (mask2[i] == 1) {
      x[i] =  0.0;
      y[i] = -0.0;
    } else {
      x[i] = -0.0;
      y[i] = 0.0;
    }
  }

#pragma loop nounroll  
  for(i=0;i<65;i++) {
    if (mask2[i] == 1) {
      if (copysign(1.0, x[i]) != 1.0 || copysign(1.0, y[i]) != -1.0) {
	printf("NG(double)  %d: %f %f \n",i,x[i],y[i]);
      }
    } else {
      if (copysign(1.0, x[i]) != -1.0 || copysign(1.0, y[i]) != 1.0) {
	printf("NG(double)  %d: %f %f \n",i,x[i],y[i]);
      }
    }
  }

  printf("ok\n");
  return 0;
}
