#include <stdio.h>
_Bool b;
short s;
int main()
{
  char *p = (char*)0xff;
  b = p;
  p = (char *)b;
  p = (char *)s;

  printf("%d\n", b);
}
