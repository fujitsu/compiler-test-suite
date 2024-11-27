#include <stdio.h>
int main(void)
{
  int a;
  unsigned int b;

  if( ( a & 0x100 ) == 0x110 )
    printf( "### NG ###\n" );
  if( ( a | 0x110 ) == 0x100 )
    printf( "### NG ###\n" );
  if( ( b & 0x100 ) == 0x110 )
    printf( "### NG ###\n" );
  if( ( b | 0x110 ) == 0x100 )
    printf( "### NG ###\n" );

  printf( "### OK ###\n" );
  return 0;
}
