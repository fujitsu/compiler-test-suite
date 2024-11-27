#include <stdlib.h>
#include <stdio.h>
#include <math.h>


int ret()
{
  return 123;
}
int main()
{
  int i;
  printf("021 start\n");
  i = ret(); 
  if( i * 0x80000001 == 123 * 0x80000001)
    printf("021(NO.1) : OK\n");
  i = ret();
  if( i / 0x80000001 == 123 / 0x80000001)
    printf("021(NO.2) : OK\n");
  printf("021 end\n");
exit (0);
}

