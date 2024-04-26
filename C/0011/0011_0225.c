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

  printf("********** TEST START **********\n");

      old=25;
    blood=b_type_o;
   weight=55;

  switch(old)
      {
   case   17:
      printf("***** 01 ***** N   G *****\n");
      break;
   case   35:
      printf("***** 01 ***** N   G *****\n");
      break;
   case   25:
      printf("***** 01 ***** O   K *****\n");
      break;
   case   20:
      printf("***** 01 ***** N   G *****\n");
      break;
   default  :
      printf("***** 01 ***** N   G *****\n");
      }
  switch(blood)
      {
   case    1:
      printf("***** 02 ***** N   G *****\n");
      break;
   case    2:
      printf("***** 02 ***** O   K *****\n");
      break;
   case    3:
      printf("***** 02 ***** N   G *****\n");
      break;
   case    4:
      printf("***** 02 ***** N   G *****\n");
      break;
   default  :
      printf("***** 02 ***** N   G *****\n");
      }
  switch(weight)
      {
   case   40:
      printf("***** 03 ***** N   G *****\n");
      break;
   case   65:
      printf("***** 03 ***** N   G *****\n");
      break;
   case   60:
      printf("***** 03 ***** N   G *****\n");
      break;
   case   55:
      printf("***** 03 ***** O   K *****\n");
      break;
   default  :
      printf("***** 03 ***** N   G *****\n");
      }

  printf("********** TEST  END **********\n");
}
