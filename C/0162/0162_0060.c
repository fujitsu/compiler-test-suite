#include <stdio.h>
int sub(int i1, int i2, int i3)
{
  int k = i3;
  int i;

  for (i = 0; i < i1; i++) {
    if (i2 < 20) {
      continue;
    }
    i2 = k + i2;
  }
  return i2;
}

int main(void)
{
  printf("%s\n", (sub(10,7,12) == 7) ? "ok" : "ng");
}
