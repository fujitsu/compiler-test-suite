#include <stdio.h>
struct tag1 {
  int i;
} ;
struct tag2 {
  int i;
  struct tag1 s;
} ;
int main()
{
  struct tag2 s = {1, ((struct tag2){2}).i};
  printf("%d\n", s.i);
  printf("%d\n", s.s.i);
}
