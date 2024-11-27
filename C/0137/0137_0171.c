#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i, b;
  int *x, a[100], c[100];

  for ( i = 0; i < 100; i++ ) {
    a[i] = i * i - i - 100;
    c[i] = i;
  }

  b = 2;
  x = &c[1];
  for ( i = 0; i < 100; i++ ) {
    (*x) = (*x) + a[i];
    c[i] = a[i] - b;
  }

  printf( "sum = %d\n", *x );
  if ( *x == 313498 )
    printf( "*** sum OK ***\n" );
  else
    printf( "*** sum NG ***\n" );
exit (0);
}
