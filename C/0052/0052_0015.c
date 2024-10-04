#include <stdio.h>



int main()
{
  int a,b,c;
  int *ptr;

  printf("********** 16 TEST START **********\n");

  b = 1;
#ifdef __STDC__
  a = +b;
#else
  a =  b;
#endif
  if (a == 1)
      printf("***** 16 - 01 ***** O   K *****\n");
    else
      printf("***** 16 - 01 ***** N   G *****\n");

  a = -b;

  if (a == -1)
      printf("***** 16 - 02 ***** O   K *****\n");
    else
      printf("***** 16 - 02 ***** N   G *****\n");

  a = ~b;

  if (a == -2)
      printf("***** 16 - 03 ***** O   K *****\n");
    else
      printf("***** 16 - 03 ***** N   G *****\n");

  a = !b;

  if (a == 0)
      printf("***** 16 - 04 ***** O   K *****\n");
    else
      printf("***** 16 - 04 ***** N   G *****\n");

  ptr = &a;

  if (*ptr == 0)
      printf("***** 16 - 05 ***** O   K *****\n");
    else
      printf("***** 16 - 05 ***** N   G *****\n");

  printf("********** 16 TEST  END  **********\n");
}
