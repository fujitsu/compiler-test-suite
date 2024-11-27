#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define N 50
int main()
{
   int i;
   double o=0.0, p=0.0, q=0.0, r=0.0, s=0.0;
   double a[N], b[N];

  for ( i = 0; i < N; i++ )
    a[i] = (double)(i*i);

  for ( i = 0; i < N; i++ ) {
    b[i] = a[i];
    o = o + a[i];
  }

  for ( i = 0; i < N; i++ ) {
    p = (double)i;
    p = p + a[i];
  }

  for ( i = 0; i < N; i++ ) {
    q = q + a[i];
    q = (double)i;
  }

  for ( i = 0; i < N; i++ ) {
    b[i] = r + a[i];
    r = r + a[i];
  }

  for ( i = 0; i < N; i++ ) {
    s = s + a[i];
    b[i] = s + a[i];
  }

  printf( "%lf\n", o ); 
  printf( "%lf\n", p ); 
  printf( "%lf\n", q ); 
  printf( "%lf\n", r ); 
  printf( "%lf\n", s ); 
  for ( i = 0; i < N; i++ )
    printf( "%lf\n", b[i] );

  if ( o == 40425.0 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( p == 2450.0 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( q == 49.0 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

  if ( r == 40425.0 )
    printf( "***** LOOP4 OK *****\n" );
  else
    printf( "***** LOOP4 NG *****\n" );

  if ( s == 40425.0 )
    printf( "***** LOOP5 OK *****\n" );
  else
    printf( "***** LOOP5 NG *****\n" );
exit (0);
 }

