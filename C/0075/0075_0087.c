#include <stdio.h>
#define A
#define f( a )  a
int main()
{
  int x = 0, y = 0;

f(
#ifdef A
  x
#endif
) = 1;
  printf("%s\n", x == 1 ? "ok": "ng");
}
