#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i, j;
  int x, y1, y2, y3;
  int k1=0, k2=0, k3=0;

  for ( i = 0, j = 100; i < 100; i++, j = j-2 ) {
    x = i + j;
    y1 = x + i;
    k1 = k1 + x +  y1;
    y2 = x - j;
    x = x + j;
    k2 = k2 + y2 + x;
    x = i - j;
    y3 = x + i;
    k3 = k3 + x + y3;
  }

  printf( "SUM1 = %d\n", k1 );
  if ( k1 == 15050 )
    printf( "*** sum1 OK ***\n" );
  else
    printf( "*** sum1 NG ***\n" );
  printf( "SUM2 = %d\n", k2 );
  if ( k2 == 10100 )
    printf( "*** sum2 OK ***\n" );
  else
    printf( "*** sum2 NG ***\n" );
  printf( "SUM3 = %d\n", k3 );
  if ( k3 == 14650 )
    printf( "*** sum3 OK ***\n" );
  else
    printf( "*** sum3 NG ***\n" );
exit (0);
}

