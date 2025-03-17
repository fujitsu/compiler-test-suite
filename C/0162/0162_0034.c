#include <stdio.h>
int sub(int i1, int i2)
{
  int k,j;
  k =10;

  if (i1 > i2) {
    j = i1 + k;
  } else {
    j = i1 - i2;
  }
  return j;
}

int main(void)
{
  printf("%s\n", (sub(10,7) == 20) ? "ok" : "ng");
}
