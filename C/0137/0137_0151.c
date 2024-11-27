#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define N 50
int main()
{
   int i;
   int a[N], c[1];

  for ( i = 1; i < N; i++ ) {
    a[i] = i % 3;
    if ( a[i] == 0 )
      a[i] = 1;
  }

  c[0] = 1;
  for ( i = 1; i < N; i++ ) {
    c[0] = c[0] * a[i];
  }
  printf( "c[0] = %d\n", c[0] );

  if ( c[0] == 65536 )
    printf( "***** LOOP OK *****\n" );
  else
    printf( "***** LOOP NG *****\n" );

exit (0);
 }

