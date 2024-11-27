#include <stdio.h>

int ret()
{
  return 123;
}
int main()
{
  int i;
  printf(" start\n");
  i = ret(); 
  if( i * 0x80000001 == 123 * 0x80000001)
    printf("(NO.1) : OK\n");
  i = ret();
  if( i / 0x80000001 == 123 / 0x80000001)
    printf("(NO.2) : OK\n");
  printf(" end\n");
}

