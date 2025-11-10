#include <stdio.h>
static int sub(int i1, int i2)
{
  int k,j;
  k =10;

  if (i1 > i2) {
    j = i1 + i2;

    if (i1 == 5) {
      return i1;
    }
  } else {
    j = i1 - i2;
  }
  printf("k = %d  j = %d\n",k,j);
  return (k < j);
}

int lto_sub_46(void)
{
  printf("%s\n", (sub(10,7) > 0) ? "ok" : "ng");
}
