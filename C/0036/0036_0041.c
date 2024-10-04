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
      c8a[i] = 2;
      c8b[i] = (i+1)+(i+2)*I;
      c8c[i] = (i+1)*2+4*(i+1)*I;
      c8e[i] = 2+1.0I;
      c8d[i] = 0;
      c8y = 2;
      c8z = 4;
      n = i-2;
      r4x[i] = -i;
      r4y[i] = 11-i;
      r4z = i+i*2*I;
    }

  for(i=0;i<10;i++)
    {
      c8b[i] = c8a[i] + c8d[i] +3;
      r4x[i] = 3 - c8b[i] + r4z;
      r4y[i] = c8a[i]+5;
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           crealf(c8b[i]),cimagf(c8b[i]),
           crealf(c8b[i+1]),cimagf(c8b[i+1]),
           crealf(c8b[i+2]),cimagf(c8b[i+2]),
           crealf(c8b[i+3]),cimagf(c8b[i+3]),
           crealf(c8b[i+4]),cimagf(c8b[i+4]));
  
  printf("\n");
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
           r4y[i],r4y[i+1],r4y[i+2],r4y[i+3],r4y[i+4]);
  

  for(i=0;i<10;i++)
    {
      c8d[i] = c8a[i] + 2;
      r4y[i] = c8a[i] + 5;
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           crealf(c8d[i]),cimagf(c8d[i]),
           crealf(c8d[i+1]),cimagf(c8d[i+1]),
           crealf(c8d[i+2]),cimagf(c8d[i+2]),
           crealf(c8d[i+3]),cimagf(c8d[i+3]),
           crealf(c8d[i+4]),cimagf(c8d[i+4]));
  
  printf("\n");
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
           r4y[i],r4y[i+1],r4y[i+2],r4y[i+3],r4y[i+4]);
  
  for(i=0;i<10;i++)
    {
      c8a[i] = c8b[i] + c8y-c8z+2.0;
      c8d[i] = c8b[i] + c8y-c8z+2.0;
      c8e[i] = c8b[i] + 1 + c8z;
      c8c[i] = c8b[i] + 1 + c8z;
      
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
  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           crealf(c8e[i]),cimagf(c8e[i]),
           crealf(c8e[i+1]),cimagf(c8e[i+1]),
           crealf(c8e[i+2]),cimagf(c8e[i+2]),
           crealf(c8e[i+3]),cimagf(c8e[i+3]),
           crealf(c8e[i+4]),cimagf(c8e[i+4]));
  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           crealf(c8c[i]),cimagf(c8c[i]),
           crealf(c8c[i+1]),cimagf(c8c[i+1]),
           crealf(c8c[i+2]),cimagf(c8c[i+2]),
           crealf(c8c[i+3]),cimagf(c8c[i+3]),
           crealf(c8c[i+4]),cimagf(c8c[i+4]));
}

