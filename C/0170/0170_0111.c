#include <stdio.h>
int sub(int j, int k);

int main()
{
  printf("***** unroll070 ***** unroll 1 never 0 not 0\n");
  sub(10,15);
  printf("***** unroll070 ***** end\n");
}
int sub(j,k)
     int j;
     int k;
{
  int v;
  int i;
  v=0;
  for(i=0;i<j+k;i++)
    {
      v++;
    }
  if(v==25)
    printf("ok\n");
  else
    printf("ng v=%d\n",v);
}
