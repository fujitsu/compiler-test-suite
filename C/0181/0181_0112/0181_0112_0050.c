#include <stdio.h>
static int aaa = 10;

static int sub(int i1, int i2)
{
  int k = aaa;
  int j;

  if (i1 == i2) {
    j = i1 * i2;

    if (i1 == 5) {
      return i1;
    }
  } else if (i1 < i2){
    j = i1 - i2;

    if (i2 == 5) {
      return i2;
    }
  } else {
    j = k + i2;
  }
  return j;
}

  int lto_sub_50(void)
{
  printf("%s\n", (sub(10,7) == 17) ? "ok" : "ng");
}
