#include <stdio.h>
int sub(int i1, int i2)
{
  int k = 10;

  if (i1 > i2) {
    i1 = k + i2;
  }
  return i1;
}

int main(void)
{
  printf("%s\n", (sub(10,7) == 17) ? "ok" : "ng");
}
