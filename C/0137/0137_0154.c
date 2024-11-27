#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
   int i;
   int p=0, o=0;
   int N=50;
   int a[50], *b, *c;

  for ( i = 0; i < N; i++ )
    a[i] = i*i;

  for ( i = 0; i < N; i++ ) {
    c = &a[i];
    o = o + *c;
    a[i] = o + i;
  }

  for ( i = 0; i < N; i++ ) {
    b = &a[i];
    *b = *c - *b;
    p = p + *b;
  }

  printf( "%d\n", p ); 

  if ( p == 1501850 )
    printf( "***** LOOP OK *****\n" );
  else
    printf( "***** LOOP NG *****\n" );
exit (0);
 }

