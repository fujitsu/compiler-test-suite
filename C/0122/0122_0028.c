#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int a,b,c;

  printf("********** 15 TEST START **********\n");

  a = 1;                    
  b = 1;                    

  a += b;

  if (a == 2)
      printf("***** 15 - 01 ***** O   K *****\n");
    else
      printf("***** 15 - 01 ***** N   G *****\n");

  a -= b;

  if (a == 1)
      printf("***** 15 - 02 ***** O   K *****\n");
    else
      printf("***** 15 - 02 ***** N   G *****\n");

  a *= b;

  if (a == 1)
      printf("***** 15 - 03 ***** O   K *****\n");
    else
      printf("***** 15 - 03 ***** N   G *****\n");

  a /= b;

  if (a == 1)
      printf("***** 15 - 04 ***** O   K *****\n");
    else
      printf("***** 15 - 04 ***** N   G *****\n");

  a %= b;

  if (a == 0)
      printf("***** 15 - 05 ***** O   K *****\n");
    else
      printf("***** 15 - 05 ***** N   G *****\n");

  a = 2;                    

  a <<= b;

  if (a == 4)
      printf("***** 15 - 06 ***** O   K *****\n");
    else
      printf("***** 15 - 06 ***** N   G *****\n");

  a >>= b;

  if (a == 2)
      printf("***** 15 - 07 ***** O   K *****\n");
    else
      printf("***** 15 - 07 ***** N   G *****\n");

  a ^= b;

  if (a == 3)
      printf("***** 15 - 08 ***** O   K *****\n");
    else
      printf("***** 15 - 08 ***** N   G *****\n");

  a |= b;

  if (a == 3)
      printf("***** 15 - 09 ***** O   K *****\n");
    else
      printf("***** 15 - 09 ***** N   G *****\n");

  a &= b;

  if (a == 1)
      printf("***** 15 - 10 ***** O   K *****\n");
    else
      printf("***** 15 - 10 ***** N   G *****\n");

  printf("********** 15 TEST  END  **********\n");
exit (0);
}
