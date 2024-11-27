#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  char *season[] = { "spring", "summer", "autumn", "winter" } ;


  printf("********** SCPII10 TEST START **********\n");

  if (*season[0] == 's')
      printf(" ***** SCPII10 - 01 ***** O   K *****\n");
  else
      printf(" ***** SCPII10 - 01 ***** N   G *****\n");
  if (*(season[1]+1) == 'u')
      printf(" ***** SCPII10 - 02 ***** O   K *****\n");
  else
      printf(" ***** SCPII10 - 02 ***** N   G *****\n");
  if (*(season[2]) == 'a')
      printf(" ***** SCPII10 - 03 ***** O   K *****\n");
  else
      printf(" ***** SCPII10 - 03 ***** N   G *****\n");
  if (*(season[3]) == 'w')
      printf(" ***** SCPII10 - 04 ***** O   K *****\n");
  else
      printf(" ***** SCPII10 - 04 ***** N   G *****\n");

  printf("********** SCPII10 TEST  END  **********\n");

exit (0);
}
