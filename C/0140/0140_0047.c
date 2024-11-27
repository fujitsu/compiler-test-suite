#include <stdio.h>

int main()
{
   int i;
   int p=0, sum=0;
   int N=50;
   int a[50], b[50], c[1];
 
  for ( i = 0; i < N; i++ )
    a[i] = i*i;

  
  for ( i = 0; i < N; i++ )
    b[i] = a[i];

  
  for ( i = 0; i < N; i++ )
    p = p + 10;

  
  c[0] = 0;
  for ( i = 0; i < N; i++ )
    c[0] = c[0] + a[i];

  for ( i = 0; i < N; i++ ) {
    sum = sum + b[i];
  }

  printf( "sum = %d\n", sum );

  if ( p == 500 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( c[0] == 40425 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( sum == 40425 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );
 }
