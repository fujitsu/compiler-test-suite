#include <stdio.h>
#include <math.h>

union
{
  float ra[5][5];
}r;

int l4a[5][5];
int main()
{
  long int i;
  float SW = 1.;

  r.ra[1][1] = 1.0;
  for(i=0; i<5; i++)
    {
      r.ra[1][i] = 2;
      if (SW == 1.) l4a[1][i] = 1;
    }

  for(i=0; i<5; i++)
    printf(" ra[1][%d] = %f\n",i,r.ra[1][i]);
}
