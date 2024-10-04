#include <stdio.h>
union A { char a,b; int c;} y = {.c = 1 };
int main()
{
  printf("%d\n", y.c);
}
