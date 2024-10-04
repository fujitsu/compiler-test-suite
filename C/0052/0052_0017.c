#include <stdio.h>



static int a,b,c;
int main()
{
  register  int ra,rb;
  static int sa,sb;

  printf("********** 18 TEST START **********\n");

  ra = sb = 1;

    sa = ra;
    rb = sb;
    a  = sb;

  if (sa == 1)
      printf("***** 18 - 01 ***** O   K *****\n");
    else
      printf("***** 18 - 01 ***** N   G *****\n");
  if (rb == 1)
      printf("***** 18 - 02 ***** O   K *****\n");
    else
      printf("***** 18 - 02 ***** N   G *****\n");
  if (a  == 1)
      printf("***** 18 - 03 ***** O   K *****\n");
    else
      printf("***** 18 - 03 ***** N   G *****\n");

  printf("********** 18 TEST  END  **********\n");
}
