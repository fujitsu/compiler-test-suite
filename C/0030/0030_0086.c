#include <stdio.h>
int main()
{
  struct { int a,b; } w[] = {[1] = {.a = 8} };

  printf("%d\n", sizeof(w));
  printf("%d\n", w[0].a);
  printf("%d\n", w[1].a);
}


