#include <stdio.h>
int sub(int i1, int i2)
{
  int k;

  if (i1 > i2) {
    k = i1 + i2;
  }
  return k;
}

int main(void)
{
  printf("%s\n", (sub(10,7) == 17) ? "ok" : "ng");
}
