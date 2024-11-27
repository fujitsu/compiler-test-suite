#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int a=0;
  unsigned int b=0;

  if( ( a & 0x100 ) == 0x110 )
    printf( "### NG ###\n" );
  if( ( a | 0x110 ) == 0x100 )
    printf( "### NG ###\n" );
  if( ( b & 0x100 ) == 0x110 )
    printf( "### NG ###\n" );
  if( ( b | 0x110 ) == 0x100 )
    printf( "### NG ###\n" );

  printf( "### OK ###\n" );
exit (0);
}
