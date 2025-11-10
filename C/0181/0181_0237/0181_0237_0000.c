#include <stdio.h>

extern void foo(int *, int *, int *, const int);

#define LEN  32

int main()
{
  int a[LEN], b[LEN], c[LEN];
  
  for (int i = 0; i < LEN; ++i) {
    b[i] = i;
    c[i] = i + 2;
  }

  foo(a, b, c, LEN);

  for (int i = 0; i < LEN; ++i) {
    if (a[i] != (2 * (i + 1))) {
      return 0;
    }
  }
  
  puts("OK");
  return 0;
}
