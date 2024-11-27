#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define N 50
int main()
{
   int i;
   double p=0.0, sum=0.0;
   double a[N], b[N], c[1];
 
  for ( i = 0; i < N; i++ )
    a[i] = (double)(i*i);

  for ( i = 0; i < N; i++ )
    b[i] = a[i];

  for ( i = 0; i < N; i++ )
    p = p + 10.0;

  c[0] = 0.0;
  for ( i = 0; i < N; i++ )
    c[0] = c[0] + a[i];

  printf( "%lf\n", p ); 
  printf( "%lf\n", c[0] );

  for ( i = 0; i < N; i++ ) {
    sum = sum + b[i];
  }
  printf( "sum = %lf\n", sum );

  if ( sum == 40425.0 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( p == 500.0 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( c[0] == 40425.0 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

exit (0);
 }
