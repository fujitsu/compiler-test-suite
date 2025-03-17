#include <stdio.h>
int sub(int i1, int i2)
{
  int k,j;
  k = 10;
  j = 5;
  if (i1 > i2) {
    k = i1 + i2;
  } else {
    j = i1 - i2;
  }
  printf("k = %d  j = %d\n",k,j);
  return (j < k);
}

int main(void)
{
  printf("%s\n", (sub(10,7) > 0) ? "ok" : "ng");
}
