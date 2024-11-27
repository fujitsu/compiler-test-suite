#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i, j;
  int x, y=0, z=0, w;

  for ( i = 0, j = 100; i < 50; i++, j = j-i ) {
    x = i + j;
    y = y + x;
    w = i * x;
    x = w + y;
    z = z + x + i;
    printf( "%d\n", x );
  }

  printf( "y = %d   ", y );
  if ( y == -14600 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );

  printf( "z = %d   ", z );
  if ( z == -728775 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );
exit (0);
}
