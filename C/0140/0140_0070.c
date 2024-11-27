#include <stdio.h>

int main()
{
  int i, j;
  int x, y1, y2, y3, s=10;
  int k1=0, k2=0, k3=0;

  for ( i = 0, j = 100; i < 100; i++, j = j-4 ) {
    x = i + j;
    y1 = x + i;
    k1 = k1 + x +  y1;
    x = i * i - ( i + j );
    y2 = x - j;
    s = s + x;
    k2 = k2 + y2 + x;
    x = i * j;
    y3 = i - x;
    k3 = k3 + x + y3;
  }

  s = s - k1 + k2 + k3;

  printf( "SUM = %d\n", s );
  if ( s == 1019110 )
    printf( "*** sum OK ***\n" );
  else
    printf( "*** sum NG ***\n" );
}

