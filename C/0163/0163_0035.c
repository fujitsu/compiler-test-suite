#include <stdio.h>

volatile char a[0xffffffff];

int i = 0x3fffffff;
int x = 0;
int main()
{
  if( x == 1 ) {
  a[0x3fffffff] = 1;
  a[0x3fffffff+1] = 1;
  a[-0x3fffffff] = 1;
  a[-0x3fffffff-1] = 1;
  a[-0x3fffffff-2] = 1;

  if( a[i] != 1 ) puts("NG");
  if( a[i+1] != 1 ) puts("NG");
  if( a[-i] != 1 ) puts("NG");
  if( a[-i-1] != 1 ) puts("NG");
  if( a[-i-2] != 1 ) puts("NG");
  }

  puts("OK");
}  
