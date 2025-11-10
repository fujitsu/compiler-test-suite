#include <stdio.h>

struct T_4 {
  unsigned X : 5;
  unsigned Y : 6;
  unsigned Z : 5;
};

struct T_4 GV = { 1, 5, 1 };

#ifdef ORIGINAL
int main() {
  printf("%d %d %d\n", GV.X, GV.Y, GV.Z);
  return 0;
}
#else
void sub4()
{
  printf("%d %d %d\n", GV.X, GV.Y, GV.Z);
}
#endif
