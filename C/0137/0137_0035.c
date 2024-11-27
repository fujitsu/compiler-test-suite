#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
   int i, j;
   int p=0, pp=0, q=0, r=0, s=0, t=0, u=0, v=0, w=0, x=0, y=0, z=0;
   int e=0, b=0;
   int N=50;
   int a[50], c[50];

  for ( i = 0; i < N; i++ ) {
    a[i] = i*i % 5;
    c[i] = i % 3;
  }

  for ( i = 0; i < N; i++ ) {
    for ( j = 0; j < N; j++ ) {
      p = p + (a[i]-c[j]);
      pp = pp + c[j];
    }
    pp = pp - c[i];
  }

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

  for ( i = 0; i < N; i++ ) {
    for ( j = 0; j < N; j++ ) {
      y = x;
      x = y + c[i];
    }
  }

  for ( i = 0; i < N; i++ ) {
    for ( j = 0; j < N; j++ ) {
      z = e;
      e = z + a[i];
      z = z + c[i];
    }
  }

  printf( "p  = %d\n", p ); 
  printf( "pp = %d\n", pp ); 
  printf( "q  = %d\n", q ); 
  printf( "r  = %d\n", r ); 
  printf( "s  = %d\n", s ); 
  printf( "t  = %d\n", t ); 
  printf( "u  = %d\n", u ); 
  printf( "v  = %d\n", v ); 
  printf( "w  = %d\n", w ); 
  printf( "x  = %d\n", x ); 
  printf( "y  = %d\n", y ); 
  printf( "z  = %d\n", z ); 
  printf( "e  = %d\n", e ); 

  if ( p == 2550 && pp == 2401 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( q == 50 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( r == 700 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

  if ( s == 700 )
    printf( "***** LOOP4 OK *****\n" );
  else
    printf( "***** LOOP4 NG *****\n" );

  if ( t == 100 )
    printf( "***** LOOP5 OK *****\n" );
  else
    printf( "***** LOOP5 NG *****\n" );

  if ( u == 100 )
    printf( "***** LOOP6 OK *****\n" );
  else
    printf( "***** LOOP6 NG *****\n" );

  if ( v == 100 )
    printf( "***** LOOP7 OK *****\n" );
  else
    printf( "***** LOOP7 NG *****\n" );

  if ( w == 100 )
    printf( "***** LOOP8 OK *****\n" );
  else
    printf( "***** LOOP8 NG *****\n" );

  if ( x == 2450 && y == 2449 )
    printf( "***** LOOP9 OK *****\n" );
  else
    printf( "***** LOOP9 NG *****\n" );

  if ( z == 5000 && e == 5000 )
    printf( "***** LOOP10 OK *****\n" );
  else
    printf( "***** LOOP10 NG *****\n" );
exit (0);
 }
