#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct tag1 {
            signed int           a1:1 ;
            signed int           a2:2 ;
            unsigned char b1:6 ;
            signed char          c1   ;
            } ;

struct tag1  st1 = { 1, 2, 4, 1 } ;
int main()
{

  printf("********** SCPII29 TEST START **********\n");

  if (st1.a1 == -1)
      printf("***** SCPII29 - 01  ***** O   K *****\n");
  else
      {
      printf("***** SCPII29 - 01  ***** N   G *****\n");
      printf(" (ST1.A1=%x) == %x\n",st1.a1,-1);
      }
  if (st1.a2 == -2)
      printf("***** SCPII29 - 02  ***** O   K *****\n");
  else
      {
      printf("***** SCPII29 - 02  ***** N   G *****\n");
      printf(" (ST1.A2=%x) == %x\n",st1.a2,-2);
      }
  if (st1.b1 == 4)
      printf("***** SCPII29 - 03  ***** O   K *****\n");
  else
      {
      printf("***** SCPII29 - 03  ***** N   G *****\n");
      printf(" (ST1.B1=%x) == %x\n",st1.b1,4);
      }
  if (st1.c1 == 1)
      printf("***** SCPII29 - 04  ***** O   K *****\n");
  else
      {
      printf("***** SCPII29 - 04  ***** N   G *****\n");
      printf(" (ST1.C1=%x) == %x\n",st1.c1,1);
      }

  printf("********** SCPII29 TEST  END  **********\n");

exit (0);
}
