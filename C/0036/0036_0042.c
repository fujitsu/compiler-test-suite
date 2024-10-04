#include <stdio.h>
#include <complex.h>
int main()
{
  float _Complex c8a[10],c8b[10],c8c[10],c8d[10],c8e[10],c8y,c8z;
  double _Complex c16a[10],c16b[10],c16c[10],c16d[10],c16e[10],c16y,c16z;
  float r4x[10],r4y[10],r4z,r4u[10],r4v[10],r4w[10];
  double r8x[10],r8y[10],r8z,r8u[10],r8v[10],r8w[10];
  int i,n;
  
  for(i=0;i<10;i++)
    {
      c16a[i] = 2;
      c16d[i] = 0;
      c16b[i] = (i+1)+(i+2)*I;
      c16c[i] = (i+1)*2+4*(i+1)*I;
      c16e[i] = 2+1.0I;
      c16y = 2;
      c16z = 4;
      n = i-2;
      r8x[i] = -i;
      r8y[i] = 11-i;
      r8z = i+(i*2)*I;
    }

  for(i=0;i<10;i++)
    {
      c16b[i] = c16a[i] + c16d[i] +3;
      r8x[i] = 3 - c16b[i] + r8z;
      r8y[i] = c16a[i]+5;
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16b[i]),cimag(c16b[i]),
           creal(c16b[i+1]),cimag(c16b[i+1]),
           creal(c16b[i+2]),cimag(c16b[i+2]),
           creal(c16b[i+3]),cimag(c16b[i+3]),
           creal(c16b[i+4]),cimag(c16b[i+4]));
  
  printf("\n");
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
           r8y[i],r8y[i+1],r8y[i+2],r8y[i+3],r8y[i+4]);
  

  for(i=0;i<10;i++)
    {
      c16d[i] = c16a[i] + 2;
      r8y[i] = c16a[i] + 5;
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16d[i]),cimag(c16d[i]),
           creal(c16d[i+1]),cimag(c16d[i+1]),
           creal(c16d[i+2]),cimag(c16d[i+2]),
           creal(c16d[i+3]),cimag(c16d[i+3]),
           creal(c16d[i+4]),cimag(c16d[i+4]));
  
  printf("\n");
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
           r8y[i],r8y[i+1],r8y[i+2],r8y[i+3],r8y[i+4]);
  
  for(i=0;i<10;i++)
    {
      c16a[i] = c16b[i] + c16y-c16z+2.0;
      c16d[i] = c16b[i] + c16y-c16z+2.0;
      c16e[i] = c16b[i] + 1 + c16z;
      c16c[i] = c16b[i] + 1 + c16z;
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
  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           creal(c16c[i]),cimag(c16c[i]),
           creal(c16c[i+1]),cimag(c16c[i+1]),
           creal(c16c[i+2]),cimag(c16c[i+2]),
           creal(c16c[i+3]),cimag(c16c[i+3]),
           creal(c16c[i+4]),cimag(c16c[i+4]));
}

