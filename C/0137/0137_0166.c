#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i, j;
  int x, y1, y2, y3;
  int k1=0, k2=0, k3=0;
  double z=0.0;

  for ( i = 0, j = 100; i < 100; i++, j = j-1 ) {
    x = i + j;
    y1 = x + i;
    k1 = k1 + x +  y1;
    y2 = x - j;
    x = x + j;
    z = (double)(i + j);
    z = z - (double)i / (double)j;
    x = i * j;
    k2 = k2 + y2 + x;
    y3 = x * i;
    k3 = k3 + x + y3;
  }

  printf( "sum0 = %lf\n", z );
  printf( "sum1 = %d\n", k1 );
  printf( "sum2 = %d\n", k2 );
  printf( "sum3 = %d\n", k3 );
  if ( (float)z == (float)1.0 )
    printf( "*** sum0 OK ***\n" );
  else
    printf( "*** sum0 NG ***\n" );
  if ( k1 == 24950 )
    printf( "*** sum1 OK ***\n" );
  else
    printf( "*** sum1 NG ***\n" );
  if ( k2 == 171600 )
    printf( "*** sum2 OK ***\n" );
  else
    printf( "*** sum2 NG ***\n" );
  if ( k3 == 8499150 )
    printf( "*** sum3 OK ***\n" );
  else
    printf( "*** sum3 NG ***\n" );
exit (0);
}

