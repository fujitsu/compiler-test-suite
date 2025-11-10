#include <stdio.h>
static int sub(int i1, int i2)
{
  int k = 10;
  int j;

  if (i1 > i2) {
    j = i1 + i2;
  } else if(i1 == 5){
    j = i1 - i2;
  }
  printf("k = %d  j = %d\n",k,j);
  return (j > k);
}

  int lto_sub_44(void)
{
  printf("%s\n", (sub(10,7) > 0) ? "ok" : "ng");
}
