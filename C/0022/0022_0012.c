#include <stdio.h>

#define TYPE1 _Float16
#define TYPE2 float

void foo(TYPE1 *a, TYPE2 *b, int len)
{
  int i;
  for (i=0; i<len; i++) 
    a[i] = b[i];
}

int __attribute__((optnone)) main() {
  TYPE1 a[300];
  TYPE2 b[300];
  for (int i=0; i<300; i++) {
    a[i] = 149.5;
    b[i] = i;
  }
  foo(a, b, 300);
  for (int i=0; i<300; i++) printf("%d %f\n", i, (double)a[i]);
  return 0;
}
