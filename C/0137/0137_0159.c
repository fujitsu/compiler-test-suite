#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int s;
int main()
{
  int i, j;
  int x, y=0, z, w;
  int func1(), func2();

  for ( i = 0, j = 50; i < 100; i++, j=j-2 ) {
    w = i + j;
    x = w - i;
    y = y + x;
    w = i - x;
    x = func1();
    z = x + w;
  }

  printf( "y = %d   ", y );
  if ( y == -4900 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );

  printf( "z = %d   ", z );
  if ( z == 347 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );

  y = 10;
  for ( i = 0, j = 100; i < 100; i++, j=j-3 ) {
    w = i + j;
    x = w - i;
    y = y + x;
    w = i - x;
    x = func2();
    z = x + w;
  }

  printf( "y = %d   ", y );
  if ( y == -4840 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );
  printf( "z = %d   ", z );
  if ( z == 377 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );
exit (0);
}

int func1()
{
  s++;

  return( s );
};

int func2()
{
  int i, j = 10;
  int x;

  for ( i = 0; i <  j; i++ )
    x = i * i;

  return( x );
};


