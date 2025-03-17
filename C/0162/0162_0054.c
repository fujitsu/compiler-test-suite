#include <stdio.h>
int sub(int i1, int i2)
{
  int k = i1;
  
  while(i1 > 0) {
    i2 = k + i1;
    i1--;
  }
  return i2;
}

int main(void)
{
  printf("%s\n", (sub(10,7) == 11) ? "ok" : "ng");
}
