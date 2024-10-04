#include <stdio.h>

#include <stdlib.h>
#include <complex.h>
int main()
{
  float _Complex c8a[10],c8b[10],c8c[10],c8d[10],c8e[10],c8y,c8z;
  double _Complex c16a[10],c16b[10],c16c[10],c16d[10],c16e[10],c16y,c16z;
  float r4x[10],r4y[10],r4z,r4u[10],r4v[10],r4w[10];
  double r8x[10],r8y[10],r8z,r8u[10],r8v[10],r8w[10];
  int i,n,j;

  for(i=0;i<10;i++)
    {
      c8a[i] = 2;
      c8b[i] = (i+1)+(i+2)*I;
      c8c[i] = (i+1)*2+4*(i+1)*I;
      c8e[i] = 2+1.0I;
      c8y = 2;
      c8z = 4;
      n = i-1;
      r4x[i] = -i;
      r4y[i] = 11-i;
      r4z = i+i*2*I;
    }
  for(i=0;i<10;i++)
    {
      c16a[i] = 2;
      c16b[i] = (i+1)+(i+2)*I;
      c16c[i] = (i+1)*2+4*(i+1)*I;
      c16e[i] = 2+1.0I;
      c16y = 2;
      c16z = 4;
      r8x[i] = -i;
      r8y[i] = 11-i;
      r8z = i+i*2*I;
    }

  for(j=0;j<n;j++)
  for(i=0;i<n;i++)
    {
      if (r4y[i] < 5) 
	c8a[0] = c8a[0] + cabs(c8b[i] + r4x[i]);
      else
	c8a[0] = c8a[0] + cabs(c8b[i] - r4x[i]);
    }

  for(j=0;j<n;j++)
  for(i=1;i<n+2;i++)
    {
      if (r4y[i] < 6) 
	c8a[i] = c8a[i] - cabs(c8b[i] + r4x[i]);
      else
	c8a[i] = c8a[i] - cabs(c8b[i] - r4x[i]);
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           crealf(c8a[i]),cimagf(c8a[i]),
           crealf(c8a[i+1]),cimagf(c8a[i+1]),
           crealf(c8a[i+2]),cimagf(c8a[i+2]),
           crealf(c8a[i+3]),cimagf(c8a[i+3]),
           crealf(c8a[i+4]),cimagf(c8a[i+4]));

  for(j=0;j<n;j++)
  for(i=0;i<n;i++)
    {
      if (r8y[i] < 5) 
	c16a[0] = c16a[0] + cabs(c16b[i] - r8x[i]);
      else
	c16a[0] = c16a[0] + cabs(c16b[i] + r8x[i]);
    }
  for(j=0;j<n;j++)
  for(i=1;i<n;i++)
    {
      if (r8y[i] < 4) 
	c16a[i] = c16a[i] - cabs(c16b[i] + r8x[i]);
      else
	c16a[i] = c16a[i] - cabs(c16b[i] - r8x[i]);
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16a[i]),cimag(c16a[i]),
           creal(c16a[i+1]),cimag(c16a[i+1]),
           creal(c16a[i+2]),cimag(c16a[i+2]),
           creal(c16a[i+3]),cimag(c16a[i+3]),
           creal(c16a[i+4]),cimag(c16a[i+4]));

  printf("\n");
}

