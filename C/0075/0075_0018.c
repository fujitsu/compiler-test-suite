#include <stdio.h>
int main()
{
  static enum etag { m0, m1  } const *p, q = 0;
  p = &q;

  if (*p == m0)
    puts("OK");
}
