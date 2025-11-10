#include <stdio.h>
static int sub(int i1, int i2)
{
  int k = 10;

  if (i1 > i2) {
    i1 = i1 + i2;
  }
  printf("k = %d  i1 = %d\n",k,i1);
  return (i1 > k);
}

 int lto_sub_38(void)
{
  printf("%s\n", (sub(10,7) > 0) ? "ok" : "ng");
}
