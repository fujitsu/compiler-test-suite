#include <stdio.h>

int main()
{
  struct tag
    {
      int a;
      int b;
      int c;
    }
  r, s;
  int i;
  int sum = 0;
  printf("***** unroll018 ***** unroll 1 never 0 not 0\n");
  r.a = 1;
  r.b = 1;
  r.c = 1;
  for (r.a = 0; r.a < 10; r.a++)
    {
      for (i = 0; i < 10; i++)
	{
	  s = r;
	  sum = sum + s.a;
	}
    }
  if (sum == 450)
    printf ("ok\n");
  else
    printf ("ng 450=%d\n", 450);
  printf("***** unroll018 ***** end\n");
}
