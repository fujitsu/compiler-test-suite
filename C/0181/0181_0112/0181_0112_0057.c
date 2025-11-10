#include <stdio.h>
static int sub(int i1, int i2, int i3)
{
  int k = i3;
  int i;

  for (i = 0; i < i1; i++) {
    i2 = i2 + 1;
    if (i2 > 10) {
      continue;
    }
  }
  printf("k = %d  i2 = %d\n",k,i2);
  return (k < i2);
}

  int lto_sub_57(void)
{
  printf("%s\n", (sub(10,7,12) > 0) ? "ok" : "ng");
}
