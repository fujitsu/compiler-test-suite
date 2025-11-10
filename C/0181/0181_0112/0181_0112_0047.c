#include <stdio.h>
static int sub(int i1, int i2)
{
  int k,j;
  k =10;

  if (i1 > i2) {
    j = k + i2;

    if (i1 == 5) {
      return i1;
    }
  } else {
    j = i1 - i2;
  }
  return j;
}

  int lto_sub_47(void)
{
  printf("%s\n", (sub(10,7) == 17) ? "ok" : "ng");
}
