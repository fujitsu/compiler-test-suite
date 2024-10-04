#include <stdio.h>
#include <complex.h>
int main()
{
  double _Complex c16a[10],c16b[10],c16c[10],c16d[10],c16e[10],c16y,c16z;
  double r8x[10],r8y[10],r8z,r8u[10],r8v[10],r8w[10];
  int i,n;

  for(i=0;i<10;i++)
    {
      c16a[i] = 2;
      c16b[i] = (i+1)+(i+2)*I;
      c16c[i] = (i+1)*2+4*(i+1)*I;
      c16e[i] = 2+1.0I;
      c16y = 2;
      c16z = 4;
      n = i-2;
    }

  for(i=0;i<10;i++)
    {
      c16a[i] = cimag(c16b[i]);
      c16d[i] = cimag(c16c[i])+2;
      c16e[i] = cimag(c16c[i])+(2.0+3.0I);
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

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16e[i]),cimag(c16e[i]),
           creal(c16e[i+1]),cimag(c16e[i+1]),
           creal(c16e[i+2]),cimag(c16e[i+2]),
           creal(c16e[i+3]),cimag(c16e[i+3]),
           creal(c16e[i+4]),cimag(c16e[i+4]));

  for(i=0;i<10;i++)
    {
      c16a[i] = cimag(c16b[i]+c16c[i]);
      c16d[i] = cimag(c16c[i])+cimag(c16b[i]);
      c16e[i] = cimag(c16b[i]+(2.0+3.0I)) + (4.0+5.0I);
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

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16e[i]),cimag(c16e[i]),
           creal(c16e[i+1]),cimag(c16e[i+1]),
           creal(c16e[i+2]),cimag(c16e[i+2]),
           creal(c16e[i+3]),cimag(c16e[i+3]),
           creal(c16e[i+4]),cimag(c16e[i+4]));

  printf("\n");
}

