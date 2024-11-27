#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  static char ai[5] = { 1,2,3,4,5 } ;
  static char bi[]  = "abcdef"        ;
  static char ci[3][3] = { {1,2,3}, {1,2}, {1} } ;


  printf("********** SCPII03 TEST START **********\n");

  if (ai[2] == 3)
      printf("***** SCPII03 - 01  ***** O   K *****\n");
  else
      printf("***** SCPII03 - 01  ***** N   G *****\n");
  if (bi[4] == 'e')
      printf("***** SCPII03 - 02  ***** O   K *****\n");
  else
      printf("***** SCPII03 - 02  ***** N   G *****\n");
  if (ci[0][0] == 1)
      printf("***** SCPII03 - 03  ***** O   K *****\n");
  else
      printf("***** SCPII03 - 03  ***** N   G *****\n");
  if (ci[2][2] == 0)
      printf("***** SCPII03 - 04  ***** O   K *****\n");
  else
      printf("***** SCPII03 - 04  ***** N   G *****\n");
  if (ci[0][2] == 3)
      printf("***** SCPII03 - 05  ***** O   K *****\n");
  else
      printf("***** SCPII03 - 05  ***** N   G *****\n");
  if (ci[1][1] == 2)
      printf("***** SCPII03 - 06  ***** O   K *****\n");
  else
      printf("***** SCPII03 - 06  ***** N   G *****\n");
  if (ci[2][0] == 1)
      printf("***** SCPII03 - 07  ***** O   K *****\n");
  else
      printf("***** SCPII03 - 07  ***** N   G *****\n");

  printf("********** SCPII03 TEST  END  **********\n");

exit (0);
}
