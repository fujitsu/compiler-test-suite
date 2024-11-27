#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
char *season[] = { "spring", "summer", "autumn", "winter" } ;
int main()
{


  printf("********** SCPII24 TEST START **********\n");

  if (*season[0] == 's')
      printf(" ***** SCPII24 - 01 ***** O   K *****\n");
  else
      printf(" ***** SCPII24 - 01 ***** N   G *****\n");
  if (*(season[1]+1) == 'u')
      printf(" ***** SCPII24 - 02 ***** O   K *****\n");
  else
      printf(" ***** SCPII24 - 02 ***** N   G *****\n");
  if (*(season[2]) == 'a')
      printf(" ***** SCPII24 - 03 ***** O   K *****\n");
  else
      printf(" ***** SCPII24 - 03 ***** N   G *****\n");
  if (*(season[3]) == 'w')
      printf(" ***** SCPII24 - 04 ***** O   K *****\n");
  else
      printf(" ***** SCPII24 - 04 ***** N   G *****\n");

  printf("********** SCPII24 TEST  END  **********\n");

exit (0);
}
