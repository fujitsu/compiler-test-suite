#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#define   b_type_a  1
#define   b_type_o  2
#define   b_type_ab 3
#define   b_type_b  4
int main()
{
          int    old;
          int    blood;
          int    weight;

  printf("********** SCPSI09 TEST START **********\n");

      old=25;
    blood=b_type_o;
   weight=55;

  switch(old)
      {
   case   17:
      printf("***** SCPSI09 - 01 ***** N   G *****\n");
      break;
   case   35:
      printf("***** SCPSI09 - 01 ***** N   G *****\n");
      break;
   case   25:
      printf("***** SCPSI09 - 01 ***** O   K *****\n");
      break;
   case   20:
      printf("***** SCPSI09 - 01 ***** N   G *****\n");
      break;
   default  :
      printf("***** SCPSI09 - 01 ***** N   G *****\n");
      }
  switch(blood)
      {
   case    1:
      printf("***** SCPSI09 - 02 ***** N   G *****\n");
      break;
   case    2:
      printf("***** SCPSI09 - 02 ***** O   K *****\n");
      break;
   case    3:
      printf("***** SCPSI09 - 02 ***** N   G *****\n");
      break;
   case    4:
      printf("***** SCPSI09 - 02 ***** N   G *****\n");
      break;
   default  :
      printf("***** SCPSI09 - 02 ***** N   G *****\n");
      }
  switch(weight)
      {
   case   40:
      printf("***** SCPSI09 - 03 ***** N   G *****\n");
      break;
   case   65:
      printf("***** SCPSI09 - 03 ***** N   G *****\n");
      break;
   case   60:
      printf("***** SCPSI09 - 03 ***** N   G *****\n");
      break;
   case   55:
      printf("***** SCPSI09 - 03 ***** O   K *****\n");
      break;
   default  :
      printf("***** SCPSI09 - 03 ***** N   G *****\n");
      }

  printf("********** SCPSI09 TEST  END  **********\n");
exit (0);
}
