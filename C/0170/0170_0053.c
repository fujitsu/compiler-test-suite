#include <stdio.h>
int main()
{
  int i, j, k;
  int ary1[5][5][5];
  int ary2[5][5][5];

  printf("***** unroll004 ***** unroll 2 never 0 not 0\n");
  for (i = 0; i < 5; i++)
    {
      for (j = 0; j < 5; j++)
	{
	  for (k = 0; k < 5; k++)
	    {
	      ary1[i][j][k] = i + k + j;
	      ary2[i][j][k] = i + k + j;
	    }
	}
    }
  for (i = 0; i < 5; i++)
    {
      for (j = 0; j < 5; j++)
	{
	  for (k = 0; k < 5; k++)
	    {
	      if (ary1[i][j][k] != i + k + j)
		printf ("ng ary1[%d][%d][%d] %d <= %d\n", i, j, k, ary1[i][j][k], i + j + k);
	      if (ary2[i][j][k] != i + k + j)
		printf ("ng ary2[%d][%d][%d] %d <= %d\n", i, j, k, ary2[i][j][k], i + j + k);
	    }
	}
    }
  printf("ok\n");
  printf("***** unroll004 ***** end\n");
}
