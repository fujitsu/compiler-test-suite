#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int a[4][2]={ 1, 2, {3}, 4, 5, 6 } ;
int main()
{

  printf("********** SCPII34 TEST START **********\n");

  if (a[0][0] == 1)
      printf(" ***** SCPII34 - 01 ***** O   K *****\n");
  else
      printf(" ***** SCPII34 - 01 ***** N   G *****\n");
  if (a[0][1] == 2)
      printf(" ***** SCPII34 - 02 ***** O   K *****\n");
  else
      printf(" ***** SCPII34 - 02 ***** N   G *****\n");
  if (a[1][0] == 3)
      printf(" ***** SCPII34 - 03 ***** O   K *****\n");
  else
      printf(" ***** SCPII34 - 03 ***** N   G *****\n");
  if (a[1][1] == 0)
      printf(" ***** SCPII34 - 04 ***** O   K *****\n");
  else
      printf(" ***** SCPII34 - 04 ***** N   G *****\n");
  if (a[2][0] == 4)
      printf(" ***** SCPII34 - 05 ***** O   K *****\n");
  else
      printf(" ***** SCPII34 - 05 ***** N   G *****\n");
  if (a[2][1] == 5)
      printf(" ***** SCPII34 - 06 ***** O   K *****\n");
  else
      printf(" ***** SCPII34 - 06 ***** N   G *****\n");
  if (a[3][0] == 6)
      printf(" ***** SCPII34 - 07 ***** O   K *****\n");
  else
      printf(" ***** SCPII34 - 07 ***** N   G *****\n");
  if (a[3][1] == 0)
      printf(" ***** SCPII34 - 08 ***** O   K *****\n");
  else
      printf(" ***** SCPII34 - 08 ***** N   G *****\n");

  printf("********** SCPII34 TEST  END  **********\n");

exit (0);
}
