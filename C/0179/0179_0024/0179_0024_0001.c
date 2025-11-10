#include <stdio.h>

extern  int f2(int b);

void f1(int a) {
  if (a) f2(a-1);
  printf("%d ", a);
}
