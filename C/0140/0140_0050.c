#include <stdio.h>

int main()
{
   int i;
   int o=0, p=0, q=0, r=0, s=0, t=0, u=0;
   int N=50;
   int a[50], b[50];
   int sum=0;

  for ( i = 0; i < N; i++ )
    a[i] = i*i;

  
  for ( i = 0; i < N; i++ ) {
    b[i] = a[i];
    o = o + a[i];
    o = o + i;
  }

  
  for ( i = 0; i < N; i++ ) {
    p = p + a[i];
    q = q + 2*a[i];
    r = r + 2*i;
    p = p + 3*i;
  }

  
  for ( i = 0; i < N; i++ ) {
    s = s + a[i];
    t = t + 2*a[i];
    u = u + 2*i;
    t = t + 3*i;
  }

  printf( "o = %d\n", o ); 
  printf( "p = %d\n", p ); 
  printf( "q = %d\n", q ); 
  printf( "r = %d\n", r ); 
  printf( "s = %d\n", s ); 
  printf( "t = %d\n", t ); 
  printf( "u = %d\n", u ); 
  for ( i = 0; i < N; i++ )
    sum = sum + b[i];
  printf( "sum = %d\n", sum ); 

  if ( o == 41650 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( p == 44100 && q == 80850 && r == 2450 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( s == 40425 && t == 84525 && u == 2450 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

  if ( sum == 40425 ) {
    printf( "----- sum OK -----\n" );
  }
  else {
    printf( "----- sum NG -----\n" );
  }
}
