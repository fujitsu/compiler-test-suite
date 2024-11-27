#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  static int a[4][2]={ 1, 2, {3}, 4, 5, 6 } ;


  printf("********** SCPII11 TEST START **********\n");

  if (a[0][0] == 1)
      printf(" ***** SCPII11 - 01 ***** O   K *****\n");
  else
      printf(" ***** SCPII11 - 01 ***** N   G *****\n");
  if (a[0][1] == 2)
      printf(" ***** SCPII11 - 02 ***** O   K *****\n");
  else
      printf(" ***** SCPII11 - 02 ***** N   G *****\n");
  if (a[1][0] == 3)
      printf(" ***** SCPII11 - 03 ***** O   K *****\n");
  else
      printf(" ***** SCPII11 - 03 ***** N   G *****\n");
  if (a[1][1] == 0)
      printf(" ***** SCPII11 - 04 ***** O   K *****\n");
  else
      printf(" ***** SCPII11 - 04 ***** N   G *****\n");
  if (a[2][0] == 4)
      printf(" ***** SCPII11 - 05 ***** O   K *****\n");
  else
      printf(" ***** SCPII11 - 05 ***** N   G *****\n");
  if (a[2][1] == 5)
      printf(" ***** SCPII11 - 06 ***** O   K *****\n");
  else
      printf(" ***** SCPII11 - 06 ***** N   G *****\n");
  if (a[3][0] == 6)
      printf(" ***** SCPII11 - 07 ***** O   K *****\n");
  else
      printf(" ***** SCPII11 - 07 ***** N   G *****\n");
  if (a[3][1] == 0)
      printf(" ***** SCPII11 - 08 ***** O   K *****\n");
  else
      printf(" ***** SCPII11 - 08 ***** N   G *****\n");

  printf("********** SCPII11 TEST  END  **********\n");

exit (0);
}
