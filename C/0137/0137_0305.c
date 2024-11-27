#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (int L);

struct tag
  {
    int a;
  };
int main (void)
{
  printf("***** unroll035 ***** unroll 1 never 0 not 0\n");
  sub(5);
  printf("***** unroll035 ***** end\n");
exit (0);
}

int sub (int L)
{
  int i;
  int j;
  struct tag s[6];
  struct tag tmp;
  for(i=1,j=L;i<=L;i++,j--)
    {
      tmp.a = j;
      switch(i)
	{
	case 1:
	  s[i] = tmp;
	  break;
	case 2:
	  s[i] = tmp;
	  break;
	case 3:
	  s[i] = tmp;
	  break;
	case 4:
	  s[i] = tmp;
	  break;
	case 5:
	  s[i] = tmp;
	  break;
	}
    }
  if(s[1].a !=5)
    printf("ng\n");
  if(s[2].a !=4)
    printf("ng\n");
  if(s[3].a !=3)
    printf("ng\n");
  if(s[4].a !=2)
    printf("ng\n");
  if(s[5].a !=1)
    printf("ng\n");
  if(i!=6)
    printf("ng\n");
  printf("ok\n");
}

