#include <stdio.h>
int aaa = 10;

int sub(int i1, int i2)
{
  int k = aaa;
  int j;

  if (i1 < i2) {
    j = i2 - i1;

    if (i1 == 5) {
      return i1;
    }
  } else if (i1 > i2){
    j = i1 + i2;

    if (i2 == 5) {
      return i2;
    }
  } else {
    j = i1 * i2;
  }
  printf("k = %d  j = %d\n",k,j);
  return (j > k);
}

int main(void)
{
  printf("%s\n", (sub(10,7) > 0) ? "ok" : "ng");
}
