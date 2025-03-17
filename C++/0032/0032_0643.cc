
















#include <stdio.h>

enum flag { on, off };

int chk(int i)
{
  return i==on ? 1 : 0 ;
}
int main()
{
  flag first, second;

  first = on;
  second = off;

  if ( chk(first) && !chk(second) )
    printf("ok\n");
  else
    printf("ng\n");

}
