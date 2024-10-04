

#include <stdio.h>

#define N 100

int a[N];

int main()
{
  int i;
  int *p = &i;
  i=0; *p = 2;

  a[0]=0; a[1]=0; a[99]=0;

  do {
    a[i] = i;
    i++;
  } while(i<99);

  for(i=0;i<N;i++) printf("%d ",a[i]); printf("\n"); 

  return 0;
}
