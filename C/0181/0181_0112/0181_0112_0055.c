#include <stdio.h>
static int sub(int i1, int i2, int i3)
{
  int k = i3;
  
  while(i1 > 0) {
    i2 = k + i3;
    k = i1 + i2;
    i1--;
  }
  return i2;
}

  int lto_sub_55(void)
{
  printf("%s\n", (sub(10,7,12) == 186) ? "ok" : "ng");
}
