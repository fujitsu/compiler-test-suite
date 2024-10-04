#include <stdio.h>
union A { char a,b,c;} y = {.a = 1, .c = 2 };
int main()
{
  printf("%d\n", y.b);
}
