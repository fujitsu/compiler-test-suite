#include <stdio.h>
static int sub(int i1, int i2)
{
  int k = 10;
  int j;

  if (i1 > i2) {
    j = i1 + k;
  } else if(i1 == 5){
    j = i1 + i2;
  }
  return j;
}

  int lto_sub_43(void)
{
  printf("%s\n", (sub(10,7) == 20) ? "ok" : "ng");
}
