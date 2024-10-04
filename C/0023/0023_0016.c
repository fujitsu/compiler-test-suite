#include <stdio.h>

int main()
{
  long int a;

  a = 0x40020000LL;

  if ( a == 0x40020000 )
    printf("OK\n");
  else
    printf("NG\n");
}
