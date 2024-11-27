#include <stdio.h>
int main()
{
  int i, j;
  int x, y, z;

  for ( i = 0, j = 100; i < 100; i++, j = j-2 ) {
    x = i + j;
    y = i - x;
    x = y + j;
    z = x * i;
    y = i - z;
    z = z - x - y;
    x = x + y;
    z = z + x - y;
  }
  if ( z == -99 )
    printf( "OK\n" );
  else
    printf( "NG\n" );
}
