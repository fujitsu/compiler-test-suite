#include <stdio.h>
int sub(int i1, int i2)
{
  int k,j;

  if (i1 > i2) {
    k = i1 + i2;
  } else if(i1 == 5){
    i1 = i1 - i2;
  }
  printf("k = %d  i1 = %d\n",k,i1);
  return (k > i1);
}

int main(void)
{
  printf("%s\n", (sub(10,7) > 0) ? "ok" : "ng");
}
