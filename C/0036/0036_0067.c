#include <stdio.h>

#include "math.h"
#include "complex.h"
int main()
{
  float r4a[10],r4b[10],r4c[10];
  double r8a[10],r8b[10],r8c[10];
  _Complex float c8a[10],c8b[10],c8c[10];
  _Complex double c16a[10],c16b[10],c16c[10];
  
  int  i,j,k,n,m,l;

  for(i=0;i<10;i++)
    {
      c8c[i] = i-i*I;
      c16c[i] = i-i*I;
    }
  

  n = 5;
  m = 5;

  for(i=0;i<10;i++)   r4a[i] = 0;
  for(i=0;i<10;i++)   r4b[i] = sin((float)i);
  for(i=0;i<10;i++)   r4c[i] = i+2;
  for(i=0;i<10;i++)   r4a[i] = r4b[i] +r4c[i]-r4a[i];
  
  for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);

  for(i=0;i<10;i++)   r8a[i] = 0;
  for(i=0;i<10;i++)   r8b[i] = i;
  for(i=0;i<10;i++)   r8c[i] = cos((double)i+2);
  for(i=0;i<10;i++)   r8a[i] = r8b[i] - r8c[i] + r8a[i];

  for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);

  
  for(i=0;i<10;i++)   c8a[i] = i;
  for(i=0;i<10;i++)   c8b[i] = c8c[i];
  for(i=0;i<10;i++)   c8c[i] = i+2;
  for(i=0;i<10;i++)   c8a[i] = c8b[i] +c8c[i]+c8a[i];
  
  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           crealf(c8a[i]),cimagf(c8a[i]),
           crealf(c8a[i+1]),cimagf(c8a[i+1]),
           crealf(c8a[i+2]),cimagf(c8a[i+2]),
           crealf(c8a[i+3]),cimagf(c8a[i+3]),
           crealf(c8a[i+4]),cimagf(c8a[i+4]));

  for(i=0;i<10;i++)   c16a[i] = i;
  for(i=0;i<10;i++)   c16b[i] = c16c[i];
  for(i=0;i<10;i++)   c16c[i] = i+2;
  for(i=0;i<10;i++)   c16a[i] = c16b[i] +c16c[i]+c16a[i];
  
  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           crealf(c16a[i]),cimagf(c16a[i]),
           crealf(c16a[i+1]),cimagf(c16a[i+1]),
           crealf(c16a[i+2]),cimagf(c16a[i+2]),
           crealf(c16a[i+3]),cimagf(c16a[i+3]),
           crealf(c16a[i+4]),cimagf(c16a[i+4]));
}
