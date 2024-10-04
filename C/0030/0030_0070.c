#include <stdio.h>
struct a {
  int i;
  char j;
};
struct b {
  int i;
  char j;
};
struct c {
  int i;
  char j;
};
struct d {
  int i;
  char j;
};
struct aa {
  char i;
  char j;
  struct a a;
};
struct ba {
  char i;
  char j;
  struct a a;
};
struct ca {
  char i;
  char j;
  struct a a;
};
struct da {
  char i;
  char j;
  struct a a;
};
int main()
{
  struct aa s1 = {.j = 10, {1,2}};

  printf("%d,%d,%d,%d\n",s1.i,s1.j,s1.a.i,s1.a.j);
}
