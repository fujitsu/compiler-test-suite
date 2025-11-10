#include <stdio.h>
static int sub(int i1, int i2, int i3)
{
  int k = i3;
  int i;

  for (i = 0; i < i1; i++) {
    i2 = k + i2;
    k  = i + k; 
    if (i2 < 20) {
      continue;
    }
    i2 = i2 + i3;
  }
  return i2;
}

int lto_sub_61(void)
{
  printf("%s\n", (sub(10,7,12) == 355) ? "ok" : "ng");
}
