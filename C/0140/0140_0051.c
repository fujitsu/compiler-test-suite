#include <stdio.h>


#define N 50
#define R (double)0.0
#define TW (double)2.0
#define TH (double)3.0
int main()
{
   int i;
   double o=R, p=R, q=R, r=R, s=R, t=R, u=R;
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
    q = q + TW*a[i];
    r = r + TW*(double)i;
    p = p + TH*(double)i;
  }

  
  for ( i = 0; i < N; i++ ) {
    s = s + a[i];
    t = t + TW*a[i];
    u = u + TW*(double)i;
    t = t + TH*(double)i;
  }


  if ( o == (double)41650.0 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( p == (double)44100.0 && q == (double)80850.0 && r == (double)2450.0 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( s == (double)40425.0 && t == (double)84525.0 && u == (double)2450.0 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

 }

