#include <stdio.h>
#include <complex.h>
int sub_c16 (double _Complex c16a[10], double _Complex c16b[10], double _Complex c16c[10], double _Complex c16e[10], double _Complex c16f);
int sub_c8 (float _Complex c8a[10], float _Complex c8b[10], float _Complex c8c[10], float _Complex c8e[10], float _Complex c8f);
int 
main (void)
{
  float _Complex c8a[10],c8b[10],c8c[10],c8d[10],c8e[10],c8f;
  double _Complex c16a[10],c16b[10],c16c[10],c16d[10],c16e[10],c16f;
  int i,j;
  
  for(i=0;i<10;i++)
    {
      c8a[i] = 2;
      c8b[i] = (i+1)+(i+2)*I;
      c8c[i] = (i+1)*2+4*(i+1)*I;
      c8e[i] = 2+1.0I;
      c8f = 2;
    }

  sub_c8(c8a,c8b,c8c,c8e,c8f);
  
  for(i=0;i<10;i++)
    {
      c16a[i] = 2;
      c16b[i] = (i+1)+(i+2)*I;
      c16c[i] = (i+1)*2+4*(i+1)*I;
      c16e[i] = 2+1.0I;
      c16f = 2;
    }

  sub_c16(c16a,c16b,c16c,c16e,c16f);

}

int 
sub_c8 (float _Complex c8a[10], float _Complex c8b[10], float _Complex c8c[10], float _Complex c8e[10], float _Complex c8f)
{
  int i,j;
  
  for(i=0;i<10;i++)
    {
      c8f = c8f + c8b[i] - c8c[i]+1.0+2.0I;
    }

    printf("(%f %f) \n", crealf(c8f),cimagf(c8f));

  for(i=0;i<10;i++)
    {
      c8f = c8c[i] * c8e[i] + c8a[2];
    }

    printf("(%f %f) \n", crealf(c8f),cimagf(c8f));

    printf("\n");

    return 0;
}

int 
sub_c16 (double _Complex c16a[10], double _Complex c16b[10], double _Complex c16c[10], double _Complex c16e[10], double _Complex c16f)
{
  int i,j;
  
  for(i=0;i<10;i++)
    {
      c16f = c16f + c16b[i] - c16c[i]+1.0+2.0I;
    }

    printf("(%f %f) \n", creal(c16f),cimag(c16f));

  for(i=0;i<10;i++)
    {
      c16f = c16c[i] * c16e[i] + c16a[2];
    }

    printf("(%f %f) \n", creal(c16f),cimag(c16f));

    printf("\n");

    return 0;
}
