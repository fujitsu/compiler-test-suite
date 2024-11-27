#include <stdio.h>
#include <stdlib.h>

int * volatile a;
void sub(void)
{
  a[0] = a[0] + 1;
}

int main(void)
{
  a = (int *)malloc(sizeof(int)*1);
  a[0] = 1;
  printf("%d\n", a[0]);
  sub();
  printf("%d\n", a[0]);

  free(a);
  return 0;
}

  
