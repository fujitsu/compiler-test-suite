#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int item08 ();

int main()
{
  printf("********** 038 TEST START **********\n");
  item08 ();
  printf("********** 038 TEST END   **********\n");
exit (0);
}

int
item08 ()
{
  int bsit0801, bsit0802, bsit0803, bsit0804;
  bsit0801 = 4;
  bsit0802 = 5;
  bsit0803 = 6;
  bsit0804 = 10;
  for (; bsit0801 <= 2, bsit0802 <= 3, bsit0803 <= 4;
       bsit0801--, bsit0802--, bsit0803--)
    if (bsit0803 == 4)
      {
	if (bsit0801 == 2)
	  bsit0801++, bsit0802++,
	    bsit0803++;
	else
	  --bsit0801, --bsit0802,
	    bsit0803--;
      }
    else
      bsit0804 = bsit0804 + 10;
  if (bsit0801 != 4)
    printf ("ng 4!=%d\n", bsit0801);
  else
    printf ("ok\n");
  if (bsit0802 != 5)
    printf ("ng 5!=%d\n", bsit0802);
  else
    printf ("ok\n");
  if (bsit0803 != 6)
    printf ("ng 6!=%d\n", bsit0803);
  else
    printf ("ok\n");
  if (bsit0804 != 10)
    printf ("ng 10 != %d\n", bsit0804);
  else
    printf ("ok\n");
}
