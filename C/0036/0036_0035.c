#include <stdio.h>
#include <complex.h>
int main()
{
  float _Complex c8a[10],c8b[10],c8c[10],c8d[10],c8e[10],c8f;
  float  r4a[10];
  int i,j;
  
  for(i=0;i<10;i++)
    {
      c8a[i] = 2;
      c8b[i] = (i+1)+(i+2)*I;
      c8c[i] = (i+1)*2+4*(i+1)*I;
      c8e[i] = 2+1.0I;
      c8f = 2;
      r4a[i] = 10-i;
    }

  for(i=1;i<10;i++)
    {
      c8b[i] =c8a[0];
      for(j=0;j<10;j++)
	{
	  c8d[j] = 2+3*I;
	  c8a[j] = c8c[j]-c8b[j]+c8b[j];
	}
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
           crealf(c8b[i]),cimagf(c8b[i]),
           crealf(c8b[i+1]),cimagf(c8b[i+1]),
           crealf(c8b[i+2]),cimagf(c8b[i+2]),
           crealf(c8b[i+3]),cimagf(c8b[i+3]),
           crealf(c8b[i+4]),cimagf(c8b[i+4]));
  printf("\n");

  for(i=1;i<8;i++)
    {
      c8b[i] =c8d[i];
      for(j=i+1;j<10;j++)
	{
	  c8a[j] = c8b[j]+c8a[j];
	}
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
           crealf(c8b[i]),cimagf(c8b[i]),
           crealf(c8b[i+1]),cimagf(c8b[i+1]),
           crealf(c8b[i+2]),cimagf(c8b[i+2]),
           crealf(c8b[i+3]),cimagf(c8b[i+3]),
           crealf(c8b[i+4]),cimagf(c8b[i+4]));
  printf("\n");

  i = 0;
  for(j=i+1;j<10;j++)
    {
      c8a[j] = c8b[j]+c8a[j]-r4a[j];
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           crealf(c8a[i]),cimagf(c8a[i]),
           crealf(c8a[i+1]),cimagf(c8a[i+1]),
           crealf(c8a[i+2]),cimagf(c8a[i+2]),
           crealf(c8a[i+3]),cimagf(c8a[i+3]),
           crealf(c8a[i+4]),cimagf(c8a[i+4]));
  
  printf("\n");
  
  for(j=1;j<10;j++)
    {
      c8d[j] = 2+3*I;
      c8a[j] =c8b[j] + c8c[j];
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           crealf(c8a[i]),cimagf(c8a[i]),
           crealf(c8a[i+1]),cimagf(c8a[i+1]),
           crealf(c8a[i+2]),cimagf(c8a[i+2]),
           crealf(c8a[i+3]),cimagf(c8a[i+3]),
           crealf(c8a[i+4]),cimagf(c8a[i+4]));
  
  printf("\n");

  for(j=2;j<10;j++)
    {
      c8a[j] = c8b[j]+1;
    }

  for(i=0;i<10;i+=5)
    printf("(%f %f) (%f %f) (%f %f) (%f %f) (%f %f) \n",
           crealf(c8a[i]),cimagf(c8a[i]),
           crealf(c8a[i+1]),cimagf(c8a[i+1]),
           crealf(c8a[i+2]),cimagf(c8a[i+2]),
           crealf(c8a[i+3]),cimagf(c8a[i+3]),
           crealf(c8a[i+4]),cimagf(c8a[i+4]));
  
  printf("\n");
  
  
}

