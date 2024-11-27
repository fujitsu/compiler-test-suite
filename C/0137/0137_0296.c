#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (int L);
int main (void)
{
  printf("***** unroll025 ***** unroll 1 never 0 not 0\n");
  sub(32);
  printf("***** unroll025 ***** end\n");
exit (0);
}
int sub (int L)
{
  int i;
  int i1 = 0, i2 = 0, i3 = 0, i4 = 0, i5 = 0, i6 = 0, i7 = 0, i8 = 0, i9 = 0;
  for (i = 1; i < L; i++)
    {
      switch (i%10)
	{
	case 1:
	  i1++;
	  break;
	case 2:
	  i2++;
	  break;
	case 3:
	  i3++;
	  break;
	case 4:
	  i4++;
	  break;
	case 5:
	  i5++;
	  break;
	case 6:
	  i6++;
	  break;
	case 7:
	  i7++;
	  break;
	case 8:
	  i8++;
	  break;
	case 9:
	  i9++;
	  break;
	}
    }
  printf ("4 3 3 3 3 3 3 3 3\n");
  printf ("%d %d %d %d %d ", i1, i2, i3, i4, i5);
  printf ("%d %d %d %d\n",  i6, i7, i8, i9);
  if (i1 == 4 && i2 == 3 && i3 == 3 && i4 == 3 && i5 == 3 && i6 == 3 && i7 == 3 && i8 == 3 && i9 == 3)
    printf ("ok\n");
  else
    printf ("ng\n");
}
