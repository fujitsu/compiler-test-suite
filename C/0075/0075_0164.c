#include <stdio.h>
int ret_value2();
int ret_value1();
int main()
{
  int a,b;

  a = ret_value1();
  b = ret_value2();

  if( ~a )
    printf("(NO.1) : OK\n");
  else
    printf("(NO.1) : NG\n");

  if( ~b )
    printf("(NO.2) : OK\n");
  else
    printf("(NO.2) : NG\n");
}

int ret_value1()
{
  return 0xff;
}

int ret_value2()
{
  return 0x11;
}
