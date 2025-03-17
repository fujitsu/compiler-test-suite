#include <math.h>
#include <stdio.h>
volatile int c = 1;

int main() {
  union tag {
    int i;
    int a[10];
  } a, *b = &a;
  a.i = c;
  int j;
  for (j = 0; b->i < j; j++) {
    b->a[b->i] = b->i;
  }
  printf("ok\n");
  return 0;
}
