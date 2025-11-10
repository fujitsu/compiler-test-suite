#include <stdio.h>

extern  int f1(int a);

void f2(int b) {
  printf(".");
  if (b) f1(b-1);
}
