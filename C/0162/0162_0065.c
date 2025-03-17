#include <stdio.h>
int sub(int i1, int i2, int i3)
{
  int k = i3;
  
  while(i1 > 0) {
    k = k + i2;
    i1--;
  }
  return k;
}

int main(void)
{
  printf("%s\n", (sub(10,7,12) == 82) ? "ok" : "ng");
}
