#include <stdio.h>
int sub(int i1, int i2, int i3)
{
  int k = i3;
  if (i1 < i2) {
    k = k + i1;
    k++;
  } else {
    k = k + i2;
    k--;
  }
  printf("k = %d\n",k);
  return k;
}

int main(void)
{
  printf("%s\n", (sub(10,7, 3) > 0) ? "ok" : "ng");
}
