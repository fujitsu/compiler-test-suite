#include <stdio.h>
int sub(int i1, int i2)
{
  int k = 10;
  int j;

  if (i1 > i2) {
    j = i1 + k;
  } else if(i1 == 5){
    j = i1 + i2;
  }
  return j;
}

int main(void)
{
  printf("%s\n", (sub(10,7) == 20) ? "ok" : "ng");
}
