

#include <stdio.h>

int a[100];

int main()
{
  int i;
  int *p = &i;
  i=0; *p = 2;

  a[0]=0; a[1]=0; a[99]=0;

  while(i<99) { a[i] = i; i++; }

  for(i=0; i<100 ; i++) printf("%d ",a[i]); printf("\n"); 

  return 0;
}
