#include <stdio.h>
int sub(int i1, int i2, int i3)
{
  int k = i3;
  int i;

  for (i = 0; i < i1; i++) {
    k = i1 + i2;
    if (i2 < 20) {
      continue;
    }
    i2 = i2 + i3;
  }
  printf("k = %d  i2 = %d\n",k,i2);
  return (k > i2);
}

int main(void)
{
  printf("%s\n", (sub(10,7,12) > 0) ? "ok" : "ng");
}
