#include <stdio.h>

int main()
{
  int i;
  int j=0;
  printf("***** unroll003 ***** unroll 1 never 0 not 0\n");
  for(i=1;i<=1;i++)
    {
      j++;
    }
  if(j==1)
    printf("ok ");
  else
    printf("ng ");
  if(i==2)
    printf("ok ");
  else
    printf("ng ");
  printf("\n");
  printf("***** unroll003 ***** end\n");
}
