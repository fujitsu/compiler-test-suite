#include <stdio.h>
struct tag1 { int i; } ;
struct tag2 { int i; struct tag1 s; } ;
int main()
{
  struct tag2 x = { 1, {((struct tag1){2}).i}};
  printf("%d\n", sizeof(x));
  printf("%d\n", x.i);
  printf("%d\n", x.s.i);
}
