#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i;
  int i1 = 0, i2 = 0, i3 = 0, i4 = 0, i5 = 0, i6 = 0, i7 = 0, i8 = 0, i9 = 0;
  printf("***** unroll022 ***** unroll 1 never 0 not 0\n");
  for (i = 1; i < 4; i++)
    {
      switch (i)
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
  printf ("1 1 1 0 0 0 0 0 0\n");
  printf ("%d %d %d %d %d ", i1, i2, i3, i4, i5);
  printf ("%d %d %d %d\n",  i6, i7, i8, i9);
  if (i1 == 1 && i2 == 1 && i3 == 1 && i4 == 0 && i5 == 0 && i6 == 0 && i7 == 0 && i8 == 0 && i9 == 0)
    printf ("ok\n");
  else
    printf ("ng\n");
  printf("***** unroll022 ***** end\n");
exit (0);
}
