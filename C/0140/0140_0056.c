#include <stdio.h>

int main()
{
  int i;
  int p=0, q=0;
  int N=50;
  int a[50];

  for (i=0; i < N; i++) {
    a[i] = i;
  }

  
  for ( i = 0; i < N; i++ ) {
    q += i;
    p = p + 10;
    q -= i-4;
  }

  
  for ( i = 0; i < N; i++ ) {
    p = p * i;
  }

  
  for ( i = 0; i < N; i++ ) {
    p = p + 10;
  }

  printf( "%d  ", p ); 
  printf( "%d  ", q ); 

  if ( p == 500 && q == 200 )
    printf( "***** LOOP OK *****\n" );
  else
    printf( "***** LOOP NG *****\n" );
}
