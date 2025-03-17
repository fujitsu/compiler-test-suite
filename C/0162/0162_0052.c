#include <stdio.h>
int aaa = 10;

int sub(int i1, int i2)
{
  int k = aaa;

  if (i1 > i2) {
    k = i1 + i2;

    if (i1 == 5) {
      return i1;
    }
  } else if (i1 < i2){
    k = i1 - i2;

    if (i2 == 5) {
      return i2;
    }
  } else {
    k = i1 * i2;
  }
  return k;
}

int main(void)
{
  printf("%s\n", (sub(10,7) == 17) ? "ok" : "ng");
}
