#include <stdio.h>
signed char foo_1()
{
  return 0;
}

unsigned char foo_2()
{
  return 0;
}
int main()
{
  if( foo_1() == 0 ) puts("OK");
  else               puts("NG");
  if( foo_2() == 0 ) puts("OK");
  else               puts("NG");
}
