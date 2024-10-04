#include <stdio.h>

int a[1000];

int main()
{
  int i;
  for(i=0;i<10;i++) a[i] = 1;

  printf("%d %d\n", a[0], a[1]);

  return 0;
}
