#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int ret_value2();
int ret_value1();

int main()
{
  int a,b;

  a = ret_value1();
  b = ret_value2();

  if( ~a )
    printf("020(NO.1) : OK\n");
  else
    printf("020(NO.1) : NG\n");

  if( ~b )
    printf("020(NO.2) : OK\n");
  else
    printf("020(NO.2) : NG\n");
exit (0);
}

int ret_value1()
{
  return 0xff;
}

int ret_value2()
{
  return 0x11;
}
