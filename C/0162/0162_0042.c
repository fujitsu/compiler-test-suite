#include <stdio.h>
int sub(int i1, int i2)
{
  int k = 10;

  if (i1 > i2) {
    k = i1 + i2;
    i2 = k * 2;
    k = i1 / 2;
  }
  printf("k = %d  i2 = %d\n",k,i2);
  return (k < i2);
}

int main(void)
{
  printf("%s\n", (sub(10,7) > 0) ? "ok" : "ng");
}
