#include <stdio.h>

int main()
{
   int i;
   int o=0, p=0, q=0, r=0, s=0;
   int N=50;
   int a[50], b[50];

  for ( i = 0; i < N; i++ )
    a[i] = (i*i);

  
  for ( i = 0; i < N; i++ ) {
    b[i] = a[i];
    o = o + a[i];
  }

  
  for ( i = 0; i < N; i++ ) {
    p = i;
    p = p + a[i];
  }

  
  for ( i = 0; i < N; i++ ) {
    q = q + a[i];
    q = i;
  }

  
  for ( i = 0; i < N; i++ ) {
    b[i] = r + a[i];
    r = r + a[i];
  }

  
  for ( i = 0; i < N; i++ ) {
    s = s + a[i];
    b[i] = s + a[i];
  }

  printf( "o = %d\n", o ); 
  printf( "p = %d\n", p ); 
  printf( "q = %d\n", q ); 
  printf( "r = %d\n", r ); 
  printf( "s = %d\n", s ); 
  for ( i = 0; i < N; i++ )
    printf( "%d\n", b[i] );

  if ( o == 40425 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( p == 2450 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( q == 49 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

  if ( r == 40425 )
    printf( "***** LOOP4 OK *****\n" );
  else
    printf( "***** LOOP4 NG *****\n" );

  if ( s == 40425 )
    printf( "***** LOOP5 OK *****\n" );
  else
    printf( "***** LOOP5 NG *****\n" );
 }

