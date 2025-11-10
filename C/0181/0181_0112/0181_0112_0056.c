#include <stdio.h>
static int sub(int i1, int i2, int i3)
{
  int k = i3;
  
  while(i1 > 0) {
    k = i1 + i2;
    i1--;
  }
  return k;
}

int lto_sub_56(void)
{
  printf("%s\n", (sub(10,7,12) == 8) ? "ok" : "ng");
}
