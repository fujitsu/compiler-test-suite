#include <stdio.h>
#include <stdlib.h>

int * volatile a;
void sub(int i, int j)
{
  a = a + i;
  a[0] = a[0] + j;
  a = a - i;
}

int main(void)
{
  a = (int *)malloc(sizeof(int)*2);
  a[0] = 2;
  a[1] = 4;
  printf("%d %d\n", a[0], a[1]);
  sub(1,1);
  printf("%d %d\n", a[0], a[1]);

  free(a);
  return 0;
}

  
  
