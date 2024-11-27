#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int a,b,c;

  printf("********** 13 TEST START **********\n");

  b = 2;                    
  c = 1;                    

  a=b+c;

  if (a == 3)
      printf("***** 13 - 01 ***** O   K *****\n");
    else
      printf("***** 13 - 01 ***** N   G *****\n");

  a=b-c;

  if (a == 1)
      printf("***** 13 - 02 ***** O   K *****\n");
    else
      printf("***** 13 - 02 ***** N   G *****\n");

  a=b*c;

  if (a == 2)
      printf("***** 13 - 03 ***** O   K *****\n");
    else
      printf("***** 13 - 03 ***** N   G *****\n");

  a=b/c;

  if (a == 2)
      printf("***** 13 - 04 ***** O   K *****\n");
    else
      printf("***** 13 - 04 ***** N   G *****\n");

  a=b%c;

  if (a == 0)
      printf("***** 13 - 05 ***** O   K *****\n");
    else
      printf("***** 13 - 05 ***** N   G *****\n");

  a=b<<c;

  if (a == 4)
      printf("***** 13 - 06 ***** O   K *****\n");
    else
      printf("***** 13 - 06 ***** N   G *****\n");

  a=b>>c;

  if (a == 1)
      printf("***** 13 - 07 ***** O   K *****\n");
    else
      printf("***** 13 - 07 ***** N   G *****\n");

  a=b^c;

  if (a == 3)
      printf("***** 13 - 08 ***** O   K *****\n");
    else
      printf("***** 13 - 08 ***** N   G *****\n");

  a=b|c;

  if (a == 3)
      printf("***** 13 - 09 ***** O   K *****\n");
    else
      printf("***** 13 - 09 ***** N   G *****\n");

  a=b&c;

  if (a == 0)
      printf("***** 13 - 10 ***** O   K *****\n");
    else
      printf("***** 13 - 10 ***** N   G *****\n");

  printf("********** 13 TEST  END  **********\n");
exit (0);
}
