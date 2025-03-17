#include <stdio.h>
int sub ();


static int a = 0;

int main(void)
{
  int i, j = 0;
  printf("***** unroll034 ***** unroll 0 never 1 not 0\n");
  for (i = 0; i < 10;)
    {
      j++;
      if (a == 0)
	i++;
      sub ();
    }
  if(i!=10)
    {
      printf("ng i!=10 %d\n",i);
      return 0;
    }
  if(j!=19)
    {
      printf("ng j!=19 %d\n",j);
      return 0;
    }
  printf("ok\n");  
  printf("***** unroll034 ***** end\n");
}

int sub ()
{
  a = 1 - a;
}
