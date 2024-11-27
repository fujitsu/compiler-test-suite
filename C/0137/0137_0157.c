#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i, j;
  int x1, y=0;
  int x2, z1, z2;
  int k1=0, k2=0, k3=0;
  double sum=1.0;

  for ( i = 0; i < 100; i++) {
    x1 = (int)sum;
    y = y + (x1 - i);
    z1 = i % 10;
    z2 = i % 10;
    for ( j = 0; j < 100; j++) {
      x2 = y + j;
      z1 = z1 + (x1 + j);
      z2 = z2 + (x1 - j);
    }
    x1 = z1 + z2;
  }

  for (i=0; i < 100; i++) {
    sum += (double)(y + i);
  }

  printf( "data = %d\n",  x1 );
  printf( "sum  = %lf\n", sum );
  if ( x1 == 218 )
    printf( "*** sum1 OK ***\n" );
  else
    printf( "*** sum1 NG ***\n" );
  if ( sum == -480049.0 )
    printf( "*** sum2 OK ***\n" );
  else
    printf( "*** sum2 NG ***\n" );
exit (0);
}

