#include <stdio.h>
int sub(int i1, int i2, int i3)
{
  int k = i3;
  int i;

  for (i = 0; i < i1; i++) {
    if (i2 < 20) {
      k = k + i2;
      continue;
    }
    i2 = i + i2;
  }
  return k;
}

int main(void)
{
  printf("%s\n", (sub(10,7,12) == 82) ? "ok" : "ng");
}
