#include <stdio.h>
int sub(int i1, int i2, int i3)
{
  int k = i3;
  
  while(i1 > 0) {
    i2 = k + i3;
    k = i1 + i2;
    i1--;
  }
  return i2;
}

int main(void)
{
  printf("%s\n", (sub(10,7,12) == 186) ? "ok" : "ng");
}
