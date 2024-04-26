#include <stdio.h>

#define TYPE1 _Float16
#define TYPE2 _Bool

void foo(TYPE1 *a, _Bool *b, int len)
{
  int i;
  for (i=0; i<len; i+=3) 
    a[i] = b[i];
}

int __attribute__((optnone)) main() {
  TYPE1 a[300];
  TYPE2 b[300];
  for (int i=0; i<300; i++) {
    a[i] = 149.5;
    if (!(i%3)) b[i] = 1;
    else        b[i] = 0;
  }
  foo(a, b, 300);
  for (int i=0; i<300; i++) printf("%d %f\n", i, (double)a[i]);
  return 0;
}
