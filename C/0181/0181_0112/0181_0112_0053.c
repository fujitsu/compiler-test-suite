#include <stdio.h>
static int sub(int i1, int i2)
{
  int k = 10;
  
  while(i1 > 0) {
    i2 = i2 + 2;
    i1--;
  }
  printf("k = %d  i2 = %d\n",k,i2);
  return (k < i2);
}

  int lto_sub_53(void)
{
  printf("%s\n", (sub(10,7) > 0) ? "ok" : "ng");
}
