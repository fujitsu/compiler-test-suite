#include <stdio.h>


#include <stdlib.h>
int main()
{
  int i, j;
  int *x, y, z;

  x = (int *) calloc( 100, sizeof(int) );

  for ( i = 0, j = 100; i < 100; i=i+2, j = j-2 ) {
    x[i] = j * i;
    y = i - x[i];
    z = x[i] + y;
    x[i] = i + y;
    y = i + z;
    z = z + x[i] + y;
  }

  printf( "z = %d   ", z );
  if ( z == 294 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );

  free(x);
}
