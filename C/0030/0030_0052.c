#include <stdio.h>
struct { char a[4]; } x[] = { "a", "b" };
struct { int i; char a[4]; } y[] = {1, "a", 2, "b" };
int main()
{
  printf("%d\n", sizeof(x));
  printf("%d\n", sizeof(y));
}
