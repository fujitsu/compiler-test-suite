#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

char ai[5] = { 1,2,3,4,5 } ;
char bi[]  = "abcdef"        ;
char ci[3][3] = { {1,2,3}, {1,2}, {1} } ;
int main()
{
  printf("********** SCPII27 TEST START **********\n");

  if (ai[2] == 3)
      printf("***** SCPII27 - 01  ***** O   K *****\n");
  else
      printf("***** SCPII27 - 01  ***** N   G *****\n");
  if (bi[4] == 'e')
      printf("***** SCPII27 - 02  ***** O   K *****\n");
  else
      printf("***** SCPII27 - 02  ***** N   G *****\n");
  if (ci[0][0] == 1)
      printf("***** SCPII27 - 03  ***** O   K *****\n");
  else
      printf("***** SCPII27 - 03  ***** N   G *****\n");
  if (ci[2][2] == 0)
      printf("***** SCPII27 - 04  ***** O   K *****\n");
  else
      printf("***** SCPII27 - 04  ***** N   G *****\n");
  if (ci[0][2] == 3)
      printf("***** SCPII27 - 05  ***** O   K *****\n");
  else
      printf("***** SCPII27 - 05  ***** N   G *****\n");
  if (ci[1][1] == 2)
      printf("***** SCPII27 - 06  ***** O   K *****\n");
  else
      printf("***** SCPII27 - 06  ***** N   G *****\n");
  if (ci[2][0] == 1)
      printf("***** SCPII27 - 07  ***** O   K *****\n");
  else
      printf("***** SCPII27 - 07  ***** N   G *****\n");

  printf("********** SCPII27 TEST  END  **********\n");

exit (0);
}
