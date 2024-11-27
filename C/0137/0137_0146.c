#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define N 48
int main()
{
   int i;
   int p=0, q=0;
   int f=0;
   int a[N], b[N], c[1];

  for ( i = 0; i < N; i++ )
    a[i] = i*i;

  for ( i = 0; i < N; i++ )
    b[i] = i;


  for ( i = 0; i < N; i++ )
    p = p - a[i];


  c[0] = 0;
  for ( i = 0; i < N; i++ )
    c[0] = c[0] - a[i]*2;

  for ( i = 0; i < N; i++ ) {
    f = a[i]*b[i];
    q = q - f;
  }


  if ( p == -35720 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( c[0] == -71440 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( q == -1272384 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

exit (0);
 }































