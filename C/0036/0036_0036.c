#include <stdio.h>
#include <complex.h>
int main()
{
  double _Complex c16a[10],c16b[10],c16c[10],c16d[10],c16e[10],c16f;
  double  r8a[10];
  int i,j;
  
  for(i=0;i<10;i++)
    {
      c16a[i] = 2;
      c16b[i] = (i+1)+(i+2)*I;
      c16c[i] = (i+1)*2+4*(i+1)*I;
      c16e[i] = 2+1.0I;
      c16f = 2;
      r8a[i] = 10-i;
    }

  for(i=1;i<10;i++)
    {
      c16b[i] =c16a[0];
      for(j=0;j<10;j++)
	{
	  c16d[j] = 2+3*I;
	  c16a[j] = c16c[j]-c16b[j]+c16b[j];
	}
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16a[i]),cimag(c16a[i]),
           creal(c16a[i+1]),cimag(c16a[i+1]),
           creal(c16a[i+2]),cimag(c16a[i+2]),
           creal(c16a[i+3]),cimag(c16a[i+3]),
           creal(c16a[i+4]),cimag(c16a[i+4]));
  
  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16b[i]),cimag(c16b[i]),
           creal(c16b[i+1]),cimag(c16b[i+1]),
           creal(c16b[i+2]),cimag(c16b[i+2]),
           creal(c16b[i+3]),cimag(c16b[i+3]),
           creal(c16b[i+4]),cimag(c16b[i+4]));
  printf("\n");

  for(i=1;i<8;i++)
    {
      c16b[i] =c16d[i];
      for(j=i+1;j<10;j++)
	{
	  c16a[j] = c16b[j]+c16a[j];
	}
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16a[i]),cimag(c16a[i]),
           creal(c16a[i+1]),cimag(c16a[i+1]),
           creal(c16a[i+2]),cimag(c16a[i+2]),
           creal(c16a[i+3]),cimag(c16a[i+3]),
           creal(c16a[i+4]),cimag(c16a[i+4]));
  
  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16b[i]),cimag(c16b[i]),
           creal(c16b[i+1]),cimag(c16b[i+1]),
           creal(c16b[i+2]),cimag(c16b[i+2]),
           creal(c16b[i+3]),cimag(c16b[i+3]),
           creal(c16b[i+4]),cimag(c16b[i+4]));
  printf("\n");

  i = 0;
  for(j=i+1;j<10;j++)
    {
      c16a[j] = c16b[j]+c16a[j]-r8a[j];
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16a[i]),cimag(c16a[i]),
           creal(c16a[i+1]),cimag(c16a[i+1]),
           creal(c16a[i+2]),cimag(c16a[i+2]),
           creal(c16a[i+3]),cimag(c16a[i+3]),
           creal(c16a[i+4]),cimag(c16a[i+4]));
  
  printf("\n");
  
  for(j=1;j<10;j++)
    {
      c16d[j] = 2+3*I;
      c16a[j] =c16b[j] + c16c[j];
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16a[i]),cimag(c16a[i]),
           creal(c16a[i+1]),cimag(c16a[i+1]),
           creal(c16a[i+2]),cimag(c16a[i+2]),
           creal(c16a[i+3]),cimag(c16a[i+3]),
           creal(c16a[i+4]),cimag(c16a[i+4]));
  
  printf("\n");

  for(j=2;j<10;j++)
    {
      c16a[j] = c16b[j]+1;
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

