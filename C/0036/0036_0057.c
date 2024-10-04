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
    {
      for(i=0;i<n;i++)
	{
	  if (r4y[i] < 5) 
	    r4x[0] = r4x[0] + cabs(c8b[i] + c8c[i]);
	  else
	    r4x[0] = r4x[0] + cabs(c8b[i] - c8e[i]);
	}
      r4z = r4z + c8b[j] + c8e[j];
    }

  for(j=0;j<n;j++)
  for(i=1;i<n+2;i++)
    {
      if (r4y[i] < 6) 
	r4x[i] = r4x[i] - cabs(c8b[i] + c8c[i]);
      else
	r4x[i] = r4x[i] - cabs(c8b[i] - c8e[i]);
    }

  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
           r4x[i],r4x[i+1],r4x[i+2],r4x[i+3],r4x[i+4]);
  
  printf("%f \n",r4z);
  
  for(j=0;j<n;j++)
    {
      r4z = r4z + c8b[j] - c8e[j];
      for(i=0;i<n;i++)
	{
	  if (r8y[i] < 5) 
	    r8x[0] = r8x[0] + cabs(c16b[i] - c16c[i]);
	  else
	    r8x[0] = r8x[0] + cabs(c16b[i] + c16e[i]);
	}
      r8z = r8z - c16a[j] * c16c[j];
    }
  for(j=0;j<n;j++)
  for(i=1;i<n;i++)
    {
      if (r8y[i] < 4) 
	r8x[i] = r8x[i] - cabs(c16b[i] + c16c[i]);
      else
	r8x[i] = r8x[i] - cabs(c16b[i] - c16e[i]);
    }

  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
           r8x[i],r8x[i+1],r8x[i+2],r8x[i+3],r8x[i+4]);
  
  printf("%f %f \n",r4z,r8z);
  
  printf("\n");
}

