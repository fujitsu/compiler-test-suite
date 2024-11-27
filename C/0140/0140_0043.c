#include <stdio.h>

int main()
{
   int i;
   int p=0, pp=0, q=0, r=0, s=0, t=0, u=0, v=0, w=0;
   int b=0;
   int N=50;
   int a[50];

  for ( i = 0; i < N; i++ )
    a[i] = i*i;

  
  for ( i = 0; i < N; i++ )
    p = p + a[i];

  
  for ( i = 0; i < N; i++ )
    if ( i%2 == 0 )
      q = q + a[i];

  
  for ( i = 0; i < N; i++ ) {
    r = r + a[i]; 
    if ( i%2 == 0 )
      r = r + i;
  }

  
  for ( i = 0; i < N; i++ ) {
    if ( i%2 == 0 )
      s = s + i;
    s = s + a[i]; 
  }

  
  for ( i = 0; i < N; i++ ) {
    if ( i%2 == 0 )
      b = b + t + i;
    t = t + a[i]; 
  }

  
  for ( i = 0; i < N; i++ ) {
    u = u + a[i]; 
    if ( i%2 == 0 )
      b = b + u + i;
  }

  
  for ( i = 0; i < N; i++ ) {
    v = v + a[i]; 
    if ( i%2 == 0 )
      b += i + a[i];
  }

  
  for ( i = 0; i < N; i++ ) {
    if ( i%2 == 0 )
      b += i - a[i];
    w = w + a[i]; 
  }

  printf( "%d  ", p ); 
  printf( "%d  ", pp ); 
  printf( "%d  ", q ); 
  printf( "%d  ", r ); 
  printf( "%d\n", s ); 
  printf( "%d  ", t ); 
  printf( "%d  ", u ); 
  printf( "%d  ", v ); 
  printf( "%d  ", w ); 
  printf( "%d\n", b ); 

  if ( p == 40425 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( q == 19600 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( r == 41025 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

  if ( s == 41025 )
    printf( "***** LOOP4 OK *****\n" );
  else
    printf( "***** LOOP4 NG *****\n" );

  if ( t == 40425 )
    printf( "***** LOOP5 OK *****\n" );
  else
    printf( "***** LOOP5 NG *****\n" );

  if ( u == 40425 )
    printf( "***** LOOP6 OK *****\n" );
  else
    printf( "***** LOOP6 NG *****\n" );

  if ( v == 40425 )
    printf( "***** LOOP7 OK *****\n" );
  else
    printf( "***** LOOP7 NG *****\n" );

  if ( w == 40425 )
    printf( "***** LOOP8 OK *****\n" );
  else
    printf( "***** LOOP8 NG *****\n" );
}

