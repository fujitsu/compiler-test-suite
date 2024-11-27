#include <stdio.h>

int main()
{
  int a, b, c, d, e, i;
  int x, y1, y2, y3, z1, z2, z3;
  int k1=0, k2=0, k3=0;

  a = 5;
  b = 10;
  c = -4;
  d = 7;
  e = 9;

  for ( i = 0; i < 100; i++ ) {
    x = a + i;
    y1 = b * x;
    z1 = x;
    k1 = k1 + y1 + z1;
    x = c - i;
    y2 = d * x - i;
    z2 = x;
    k2 = k2 + y2 + z2;
    x = e * i;
    y3 = d * x;
    z3 = x;
    k3 = k3 + y3 + z3;
  }

  printf( "SUM1 = %d\n", k1 );
  if ( k1 == 59950 )
    printf( "*** sum1 OK ***\n" );
  else
    printf( "*** sum1 NG ***\n" );
  printf( "SUM2 = %d\n", k2 );
  if ( k2 == -47750 )
    printf( "*** sum2 OK ***\n" );
  else
    printf( "*** sum2 NG ***\n" );
  printf( "SUM3 = %d\n", k3 );
  if ( k3 == 356400 )
    printf( "*** sum3 OK ***\n" );
  else
    printf( "*** sum3 NG ***\n" );
}

