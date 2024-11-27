#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int L;
int f()
{
  L=0;
  return 0;
}
int main()
{
  int i,j=0;
  L=100;
  for(i=0;i<L;i++)
    {
      j=1;
      f();
    }
  if(i==1&&j==1)
    printf("ok\n");
  else
    printf("ng i=%d(1),j=%d(1)\n",i,j);
exit (0);
}

