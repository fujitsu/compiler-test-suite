#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <string.h>
int main()
{
  int i, j;
  int x, y=0, z=0, w;

  for ( i = 0, j = 10; i < 20; i++, j++ ) {
    x = i + j;
    y = y + x + i;
    w = memcmp( &x, &y, sizeof(int) );
    if (w!=0) {
      x = i;
    }
    else {
      x = w * i;
    }
    z = z + x + j;
  }
  
  printf( "y = %d   ", y );
  if ( y == 770 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );

  printf( "z = %d   ", z );
  if ( z == 580 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );
exit (0);
}
