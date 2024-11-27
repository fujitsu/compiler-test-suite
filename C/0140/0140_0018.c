#include <stdio.h>

int main()
{
  int i, j;
  int N=50;
  double a[50], b[50];
  double p=(double)0.0, q=(double)0.0, r=(double)0.0, s=(double)0.0;

  for (i = 0; i < N; i++) {
    a[i] = (double)(i-10);
    b[i] = (double)(i+100);
  }

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      p = p + (a[i] + b[i]);
      q = q + (a[i] - b[i]);
      r = r + a[i]*b[i];
      s = s + a[i]/b[i];
    }
  }

  printf( "p  = %lf\n", p ); 
  printf( "q  = %lf\n", q ); 
  printf( "r  = %lf\n", r ); 
  printf( "s  = %lf\n", s ); 

  if ( p == (double)347500.0 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( q == (double)(-275000.0) )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( r == (double)5033750.0 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

  if ( (int)s == 260 )
    printf( "***** LOOP4 OK *****\n" );
  else
    printf( "***** LOOP4 NG *****\n" );
}
