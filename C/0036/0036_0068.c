#include <stdio.h>

#include "math.h"
int main()
{
  float r4a[10],r4b[10],r4c[10];
  double r8a[10],r8b[10],r8c[10];
  
  int  i,j,k,n,m,l;

  for(i=0;i<10;i++)
    {
      r4a[i] = 0;
      r4b[i] = 0;
      r8a[i] = 0;
      r8b[i] = 0;
      r4c[i] = 0;
      r8c[i] = 0;
    }

  n = 5;
  m = 5;

  for(i=1;i<10;i++)   r4a[i] = 0;
  for(i=1;i<10;i++)   r4b[i] = ((float)i);
  for(i=0;i<10;i++)   r4c[i] = i+2;
  for(i=0;i<10;i++)   r4a[i] = r4b[i] +r4c[i]-r4a[i];
  
  for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);

  for(i=0;i<10;i++)   r8a[i] = 0;
  for(i=1;i<10;i++)   r8b[i] = i;
  for(i=1;i<10;i++)   r8c[i] = ((double)i+2);
  for(i=0;i<10;i++)   r8a[i] = r8b[i] - r8c[i] + r8a[i];

  for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);

  
  for(i=0;i<(n+5);i++)   r4a[i] = 0;
  for(i=0;i<(n+5);i++)   r4b[i] = ((float)i);
  for(i=0;i<(n+5);i++)   r4c[i] = i+2;
  for(i=0;i<(n+5);i++)   r4a[i] = r4b[i] +r4c[i]-r4a[i];
  
  for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);

  for(i=0;i<(n+5);i++)   r8a[i] = 0;
  for(i=1;i<(n+4);i++)   r8b[i] = i;
  for(i=1;i<(n+4);i++)   r8c[i] = ((double)i+2);
  for(i=0;i<(n+4);i++)   r8a[i] = r8b[i] - r8c[i] + r8a[i];

  for(i=0;i<10;i+=5)
      printf("%f %f %f %f %f \n",
	     r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);

  
}
