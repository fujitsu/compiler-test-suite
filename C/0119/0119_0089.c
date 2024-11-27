#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct tag1 {
            signed int    a1:1 ;
            signed int    a2:2 ;
            unsigned char b1:6 ;
            char   c1   ;
            } ;
int main()
{
  static struct tag1  st1 = { 1, 2, 4, 1 } ;


  printf("********** SCPII05 TEST START **********\n");

  if (st1.a1 == -1)
      printf("***** SCPII05 - 01  ***** O   K *****\n");
  else
      {
      printf("***** SCPII05 - 01  ***** N   G *****\n");
      printf(" (ST1.A1=%x) == %x\n",st1.a1,-1);
      }
  if (st1.a2 == -2)
      printf("***** SCPII05 - 02  ***** O   K *****\n");
  else
      {
      printf("***** SCPII05 - 02  ***** N   G *****\n");
      printf(" (ST1.A2=%x) == %x\n",st1.a2,-2);
      }
  if (st1.b1 == 4)
      printf("***** SCPII05 - 03  ***** O   K *****\n");
  else
      {
      printf("***** SCPII05 - 03  ***** N   G *****\n");
      printf(" (ST1.B1=%x) == %x\n",st1.b1,4);
      }
  if (st1.c1 == 1)
      printf("***** SCPII05 - 04  ***** O   K *****\n");
  else
      {
      printf("***** SCPII05 - 04  ***** N   G *****\n");
      printf(" (ST1.C1=%x) == %x\n",st1.c1,1);
      }

  printf("********** SCPII05 TEST  END  **********\n");

exit (0);
}
