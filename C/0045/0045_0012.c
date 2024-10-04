#include <stdio.h>

int a[1000];

int main()
{
  int i;
  i=0;
  while(i<10) { a[i] = 1; i++; }

  printf("%d %d\n", a[0], a[1]);

  return 0;
}
