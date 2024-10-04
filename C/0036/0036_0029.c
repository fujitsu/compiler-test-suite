#include <stdio.h>
#include <complex.h>
int main()
{
  float _Complex c8a[10],c8b[10],c8c[10],c8d[10],c8e[10],c8f;
  double _Complex c16a[10],c16b[10],c16c[10],c16d[10],c16e[10],c16f;
  int i,j;
  
  for(i=0;i<10;i++)
    {
      c8a[i] = 0;
      c8b[i] = (i+1)+(i+2)*I;
      c8c[i] = (i+1)*2+4*(i+1)*I;
      c8e[i] = 2+1.0I;
      c8f = c8a[i]+2+2*I;
    }

  for(i=0;i<10;i++)
    {
      c8a[i] = c8b[i] + c8c[i]+1.0+2.0I;
      c8d[i] = c8b[i] * c8e[3] - c8c[i] / c8f ;
      
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
	   crealf(c8a[i]),cimagf(c8a[i]),
	   crealf(c8a[i+1]),cimagf(c8a[i+1]),
	   crealf(c8a[i+2]),cimagf(c8a[i+2]),
	   crealf(c8a[i+3]),cimagf(c8a[i+3]),
	   crealf(c8a[i+4]),cimagf(c8a[i+4]));

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
	   crealf(c8d[i]),cimagf(c8d[i]),
	   crealf(c8d[i+1]),cimagf(c8d[i+1]),
	   crealf(c8d[i+2]),cimagf(c8d[i+2]),
	   crealf(c8d[i+3]),cimagf(c8d[i+3]),
	   crealf(c8d[i+4]),cimagf(c8d[i+4]));
  
  printf("\n");

  for(i=0;i<10;i++)
    {
      c16a[i] = 0;
      c16b[i] = (i+1)+(i+2)*I;
      c16c[i] = (i+1)*2+4*(i+1)*I;
      c16e[i] = 2+1.0I;
      c16f = c16a[i]+2+2*I;
    }

  for(i=0;i<10;i++)
    {
      c16a[i] = c16b[i] + c16c[i]+1.0+2.0I;
      c16d[i] = c16b[i] * c16e[3] - c16c[i] / c16f ;
      
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
	   creal(c16d[i]),cimag(c16d[i]),
	   creal(c16d[i+1]),cimag(c16d[i+1]),
	   creal(c16d[i+2]),cimag(c16d[i+2]),
	   creal(c16d[i+3]),cimag(c16d[i+3]),
	   creal(c16d[i+4]),cimag(c16d[i+4]));
  
  printf("\n");
  

  
}

