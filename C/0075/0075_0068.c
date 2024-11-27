#include <stdio.h>
int f(int p)
{
  int i;
  i = p >> 31;
  i = i >> 1;
  return i;
}
int main()
{
  int i;

  i = f(0x80000000);

  if (i==0xffffffff)
    printf("ok\n");
  else
    printf("ng\n");
}
