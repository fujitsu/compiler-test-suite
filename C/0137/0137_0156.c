#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i;
  double b=0.0, c=0.0, d=0.0, e=0.0, f=0.0;
  int N=30;
  double a[30];
 
  for ( i = 0; i < N; i++ )
    a[i] = (double)i /10.0;

  for ( i = 0; i < N; i++ ) {
    b = b + a[i];
    c = c + a[i]*0.1;
    d = d + a[i]*0.01;
    e = e + a[i]*0.001;
    f = f + a[i]*0.0001;
  }

  printf( "b = %lf\n", b );
  printf( "c = %lf\n", c );
  printf( "d = %lf\n", d );
  printf( "e = %lf\n", e );

  printf( "f = %lf\n", f );

if ((((float)b - (float)43.5) <= 0.00001) & (((float)b - (float)43.5) >=
					     -0.00001)) {
  printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

if ((((float)c - (float)4.35) <= 0.00001) & (((float)b - (float)4.35) >=  -0.00001)) 
{
      printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

if ((((float)d - (float)0.435) <= 0.00001) & (((float)b - (float)0.435) >= -0.00001)) 
{
      printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

if ((((float)e - (float)0.0435) <= 0.00001) & (((float)e - (float)0.0435) >= -0.00001 )) 
{
      printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

if ((((float)f - (float)0.00435) <= 0.00001) & (((float)f - (float)0.00435) >= -0.00001 )) 
{
      printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }
exit (0);
}

