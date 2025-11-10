
#include <stdio.h>

static int func_2(unsigned i) {
  int X = 4;
  switch (i) {
  case 8: printf("C\n");   X = 6;
  case 0:
  case 3: 
  case 2: printf("A\n"); break;
  case 1:
  case 7: X = 7;
  case 9: printf("B\n"); break;
  default: printf("D\n"); X = 1;
  }
  return X;
}

#ifdef ORIGINAL
int main() {
  unsigned i;
  for (i = 0; i < 10; ++i)
    func(i);
  return 0;
}
#else
void sub2()
{
  unsigned i;
  for (i = 0; i < 10; ++i)
    func_2(i);
}
#endif
