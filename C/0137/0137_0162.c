#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i, j;
  int x = 0, y, z;

  for ( i = 0, j = 100; i < 100; i++, j = j-2 ) {
    x = x + i;
    y = i - x;
    z = x + y;
    x = i + j;
    y = i + z;
    z = x * i;
    x = y + i;
    z = z + x + y;
  }

  printf( "z = %d   ", z );
  if ( z == 594 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );

exit (0);
}
