#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct tag1 {
            int a ;
            int aa[3] ;
            } ;
int main()
{
  static struct tag1  st1 = { 1, { 10,20,30 } } ;
  static struct tag1 *stp = &st1 ;


  printf("********** SCPII04 TEST START **********\n");

  if (st1.a == 1)
      printf("***** SCPII04 - 01  ***** O   K *****\n");
  else
      printf("***** SCPII04 - 01  ***** N   G *****\n");
  if (st1.aa[0] == 10 && st1.aa[1] == 20 && st1.aa[2] == 30)
      printf("***** SCPII04 - 02  ***** O   K *****\n");
  else
      printf("***** SCPII04 - 02  ***** N   G *****\n");
  if (stp->a == 1)
      printf("***** SCPII04 - 03  ***** O   K *****\n");
  else
      printf("***** SCPII04 - 03  ***** N   G *****\n");
  if (stp->aa[0] == 10 && stp->aa[1] == 20
                         && stp->aa[2] == 30)
      printf("***** SCPII04 - 04  ***** O   K *****\n");
  else
      printf("***** SCPII04 - 04  ***** N   G *****\n");

  printf("********** SCPII04 TEST  END  **********\n");

exit (0);
}
