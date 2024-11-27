#include <stdio.h>


#define R (double)0.0
#define O1 (double)0.10
#define OO1 (double)0.010
#define OOOO1 (double)0.00010
#define OOOOO1 (double)0.000010
#define ANS1 (float)43.5
#define ANS2 (float)4.35
#define ANS3 (float)0.435
#define ANS4 (float)0.00435
#define ANS5 (float)0.000435
int main()
{
  int i;
  double b=R, c=R, d=R, e=R, f=R;
  float  bb, cc, dd, ee, ff;
  int N=30;
  double a[30];
 
  for ( i = 0; i < N; i++ )
    a[i] = (double)i / (double)10.0;

  
  for ( i = 0; i < N; i++ ) {
    b = b + a[i];
    c = c + a[i]*O1;
    d = d + a[i]*OO1;
    e = e + a[i]*OOOO1;
    f = f + a[i]*OOOOO1;
  }

  bb = (float)b;
  cc = (float)c;
  dd = (float)d;
  ee = (float)e;
  ff = (float)f;

  printf( "bb = %f\n", bb );
  printf( "cc = %f\n", cc );
  printf( "dd = %f\n", dd );
  printf( "ee = %f\n", ee );
  printf( "ff = %f\n", ff );

  if ( bb == ANS1 ) {
    printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

  if ( cc == ANS2 ) {
    printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

  if ( dd == ANS3 ) {
    printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

  if ( ee == ANS4 ) {
    printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

  if ( ff == ANS5 ) {
    printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }
}
