#include <stdio.h>

#define TYPE _Float16
#define OP ||

void foo(TYPE *a, TYPE *b, int len)
{
  int i;
  for (i=0; i<len; i++)
    a[i] = a[i] OP b[i];
}

int __attribute__((optnone)) main() {
  TYPE a[300], b[300];
  for (int i=0; i<300; i++) {
    a[i] = 149.5;
    if (!(i%3)) b[i] = a[i];
    else        b[i] = i;
  }
  foo(a, b, 300);
  for (int i=0; i<300; i++) printf("%d %f %f\n", i, (double)a[i], (double)b[i]);
  return 0;
}
