#include <stdio.h>

int main()
{
  int i;
  int sum=0;
  int N=30;
  int ans1=135, ans2=570;
  int b[30];
 
  for ( i = 0; i < N; i++ )
    b[i] = i-10;

  
  for ( i = 0; i < N; i++ ) {
    printf( "%d ", b[i] );
    sum = sum + b[i];
  }
  printf( "\nsum = %d ", sum );
  if (sum == ans1)
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );

  
  for ( i = 0; i < N; i++ ) {
    printf( "%d ", sum );
    sum = sum + i;
  }

  printf( "\nsum = %d ", sum );
  if (sum == ans2)
    printf( "--- OK\n");
  else
    printf( "--- NG\n");
}
