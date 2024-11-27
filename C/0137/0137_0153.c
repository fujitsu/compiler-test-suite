#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define N 50
int main()
{
   int i;
   double o=0.0, p=0.0, q=0.0, r=0.0, s=0.0, t=0.0, u=0.0;
   double a[N], b[N];

  for ( i = 0; i < N; i++ )
    a[i] = (double)(i*i);

  for ( i = 0; i < N; i++ ) {
    b[i] = a[i];
    o = o + a[i];
    o = o + (double)i;
  }

  for ( i = 0; i < N; i++ ) {
    p = p + a[i];
    q = q + 2.0*a[i];
    r = r + 2.0*(double)i;
    p = p + 3.0*(double)i;
  }

  for ( i = 0; i < N; i++ ) {
    s = s + a[i];
    t = t + 2.0*a[i];
    u = u + 2.0*(double)i;
    t = t + 3.0*(double)i;
  }


  if ( o == 41650.0 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( p == 44100.0 && q == 80850.0 && r == 2450.0 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( s == 40425.0 && t == 84525.0 && u == 2450.0 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

exit (0);
 }

