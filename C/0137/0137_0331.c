#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (int L);

int stcol;
static int B[40] =
{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int COLS;
static char A[40] =
{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1};
int main (void)
{
  printf("***** unroll065 ***** unroll 1 never 0 not 0\n");
  sub (10);
  printf("***** unroll065 ***** end\n");
exit (0);
}

int sub (int L)
{
  register  int col = 0;
  register  int i;

  while (L > 0)
    {
      for (i = 0; B[i] < L && i < 40; i++)
	{
	  if (A[i])
	    continue;
	  col += B[i];
	}
      L--;
    }
  if (col == 80)
    printf ("ok\n");
  else
    printf ("ng %d\n", col);
}
