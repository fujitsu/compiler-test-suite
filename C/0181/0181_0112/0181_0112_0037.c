#include <stdio.h>
static int sub(int i1, int i2)
{
  int k = 10;

  if (i1 > i2) {
    i1 = k + i2;
  }
  return i1;
}

 int lto_sub_37(void)
{
  printf("%s\n", (sub(10,7) == 17) ? "ok" : "ng");
}
